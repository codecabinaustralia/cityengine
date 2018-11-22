class Api::V1::AnalyseAttendenceController < ApplicationController
  before_action :set_globals
  before_action :set_default_format

  def skill_attendence
  end

  def level_attendence
  end

  def site_skill_attendence
  end

  def site_level_attendence
  end

  def teacher_skill_attendence
  end

  def teacher_level_attendence
  end

  def student_skill_attendence
  end

  def student_level_attendence
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
