class RefactorWorker
  include Sidekiq::Worker
  sidekiq_options retry:false

  def perform(*args)
      	
  end
end
