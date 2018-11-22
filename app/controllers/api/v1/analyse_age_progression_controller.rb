class Api::V1::AnalyseAgeProgressionController < ApplicationController
  before_action :set_globals
  before_action :set_default_format
  
  def student_age_skill_progression
  end

  def student_age_level_progression
  end
  def student_age_site_skill_progression
  end

  def student_age_site_level_progression
  end

  def student_age_teacher_skill_progression
  end

  def student_age_teacher_level_progression
  end

  def student_age_skill_progression
  end

  def student_age_level_progression
  end

  private

  def set_default_format
     request.format = :json
  end

  def set_globals
    # Find from and to dates from params
    params.has_key?(:date_from) ? @date_from = Date.parse(params[:date_from]) : @date_from = Date.today - 6.months
    params.has_key?(:date_to) ? @date_to = Date.parse(params[:date_to]) : @date_from = Date.today
  end

end
