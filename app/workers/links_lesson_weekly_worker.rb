class LinksLessonWeeklyWorker
  include Sidekiq::Worker
  sidekiq_options retry:false

  def perform(*args)
  	require 'time'
  	require 'date'
  	require 'net/ftp'
    require 'csv'

  	# Connect to FTP Server and get CSV File

	ftp = Net::FTP.new
	ftp.connect("203.13.68.170",21)
	ftp.login("swimdesk@ftp.cityvenuemanagement.com.au","Axs4swim")
	ftp.chdir("/")
	ftp.passive = true
	# Save to file to a tmp_path
	ftp.getbinaryfile("CEN_SCHOOL.csv", "tmp_path")
	# Open the tmp_path
  	csv_text = open("tmp_path")
	csv = CSV.parse(csv_text, :headers=>true)

	##############################################################

	# Delete all LinksLessonWeekly
	LinksLessonWeekly.all.destroy_all

	##############################################################

	csv.each do |row|
		data = row[0].split("|")
  			# Create a LinksLessonWeekly record
  	  		LinksLessonWeekly.create(
  		  		StuSurname: data.values_at(0).join(''),
  		  		StuGivenNames: data.values_at(1).join(''),
  		  		StuId: data.values_at(2).join(''),
  		  		LessonDay: data.values_at(3).join(''),
  		  		LessonTime: data.values_at(4).join(''),
  		  		LessonLevel: data.values_at(5).join(''),
  		  		Area: data.values_at(6).join(''),
  		  		TeachSurname: data.values_at(7).join(''),
  		  		TeachGivenNames: data.values_at(8).join(''),
  		  		StuBookStartDate: data.values_at(9).join(''),
  		  		RPSurname: data.values_at(10).join(''),
  		  		RPGivenNames: data.values_at(11).join(''),
  		  		RPId: data.values_at(12).join(''),
  		  		RPAddress: data.values_at(13).join(''),
  		  		RPSuburb: data.values_at(14).join(''),
  		  		RPPostCode: data.values_at(15).join(''),
  		  		RPHomePhone: data.values_at(16).join(''),
  		  		RPWorkPhone: data.values_at(17).join(''),
  		  		RPPhone: data.values_at(18).join(''),
  		  		RPEmail: data.values_at(19).join(''),
  		  		RPBookingBalance: data.values_at(20).join(''),
  		  		RPBookingFree: data.values_at(21).join(''),
  		  		FamilyPaymentType: data.values_at(22).join(''),
  		  		SpecialDiscount: data.values_at(23).join(''),
  		  		RP: data.values_at(24).join(''),
  		  		StuGender: data.values_at(25).join(''),
  		  		StuDateOfBirth: data.values_at(26).join(''),
  		  		StuAge: data.values_at(27).join('')
  	  		)
  	end

  	# Run refactor worker
  	RefactorWorker.perform_async()
  end
end
