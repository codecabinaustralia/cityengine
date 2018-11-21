class DataSourcesController < ApplicationController
  def links_lesson_weekly
  	# Run LinksLessonWeeklyWorker
  	LinksLessonWeeklyWorker.perform_async()
  end
end
