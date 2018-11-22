class RefactorWorker
  include Sidekiq::Worker
  sidekiq_options retry:false

  def perform(*args)

    # Progression

    skill_progression
    level_progression
    # site_skill_progression
    # site_level_progression
    # teacher_skill_progression
    # teacher_level_progression
    # student_skill_progression
    # student_level_progression

    # Attendence

    # skill_attendence
    # level_attendence
    # site_skill_attendence
    # site_level_attendence
    # teacher_skill_attendence
    # teacher_level_attendence
    # student_skill_attendence
    # student_level_attendence
 
    # Age Progression

    # student_age_skill_progression
    # student_age_level_progression
    # student_age_site_skill_progression
    # student_age_site_level_progression
    # student_age_teacher_skill_progression
    # student_age_teacher_level_progression
    # student_age_skill_progression
    # student_age_level_progression

    # Age Attendence

    # student_age_skill_attendence
    # student_age_level_attendence
    # student_age_site_skill_attendence
    # student_age_site_level_attendence
    # student_age_teacher_skill_attendence
    # student_age_teacher_level_attendence
    # student_age_skill_attendence
    # student_age_level_attendence

  end

  #Progression

  def skill_progression

    # Get all current LinksLessonWeekly Data
    @data = LinksLessonWeekly.all
    
    # Loop through the data
    @data.each do |data|
      student = Student.find_or_create_by(
        first_name: data.StuGivenNames,
        last_name: data.StuSurname,
        dob: data.StuDateOfBirth,
        links_reference_id: data.StuId,
      )

      teacher = Teacher.find_or_create_by(
        first_name: data.TeachGivenNames,
        last_name: data.TeachSurname,
        links_reference_id:  data.TeachSurname, # NOT YET BEING PULLED FROM LINKS DATA
      )

      # Find skills for the student
      student_skills = StudentSkill.where(
        people_id: student.links_reference_id
      ).all

      # Now create SkillProgression/s based on number of skills found for the student
      student_skills.each do |skill|
        SkillProgression.find_or_create_by(
          site_id: Site.where(links_reference_id: data.Area).last.id,
          student_id: student.id,
          teacher_id: teacher.id,
          skill_id: skill.level_skill_id,
          date_achieved: skill.date_achieved
        )
      end
    end

  end

  def level_progression
    # Get all current LinksLessonWeekly Data
    @data = LinksLessonWeekly.all
    
    # Loop through the data
    @data.each do |data|
      student = Student.find_or_create_by(
        first_name: data.StuGivenNames,
        last_name: data.StuSurname,
        dob: data.StuDateOfBirth,
        links_reference_id: data.StuId,
      )

      teacher = Teacher.find_or_create_by(
        first_name: data.TeachGivenNames,
        last_name: data.TeachSurname,
        links_reference_id:  data.TeachId, # NOT YET BEING PULLED FROM LINKS DATA
      )

      # Find levels for the student
      student_skills = StudentLevel.where(
        student_id: student.links_reference_id 
      ).all

      # Now create SkillProgression/s based on number of skills found for the student
      student_skills.each do |skill|
        SkillProgression.find_or_create_by(
          site_id: Site.where(links_reference_id: data.Area).last.id,
          student_id: student.id,
          teacher_id: teacher.id,
          skill_id: skill.level_skill_id,
          date_achieved: skill.date_achieved
        )
      end
    end
  end
  
  
end
