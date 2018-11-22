class Api::V1::AnalyseProgressionController < ApplicationController
  before_action :set_globals
  before_action :set_default_format

  def skill_progression
    # Skill progression endpoint displays all skill progression table with related table data such as:
    # All related skill, student, teacher and site data

    @skill_progression = SkillProgression.where(:created_at => @date_from.beginning_of_day..@date_to.end_of_day).all
    
    respond_to do |format|
      format.json
    end
  end

  def level_progression
    # Level progression endpoint displays all level progression table with related table data such as:
    # All related level, student, teacher and site data

    @level_progression = LevelProgression.where(:created_at => @date_from.beginning_of_day..@date_to.end_of_day).all

    respond_to do |format|
      format.json
    end
  end

  def site_skill_progression
    # Site skill progression is a replica of skill progression end point however,
    # it groups table by site, referenced by site_param - WHICH IS REQUIRED
    # find_site is defined in global params - if this is not nil find skill progressions by site else find all sites
    @find_site != nil ? @skill_progression = SkillProgression.where(site_id: @find_site.id).where(:date_achieved => @date_from.beginning_of_day..@date_to.end_of_day).all : @skill_progression = SkillProgression.all
    # if find_site was found format the json data else show error
    if @find_site != nil
    respond_to do |format|
        format.json
    end
    else
      render json: {
        error: "No Site Found"
      }
    end
  end

  def site_level_progression
    # Site level progression is a replica of level progression end point however,
    # it groups table by site, referenced by site_param - WHICH IS REQUIRED
    # find_site is defined in global params - if this is not nil find level progressions by site else find all sites
    @find_site != nil ? @level_progression = LevelProgression.where(site_id: @find_site.id).where(:date_achieved => @date_from.beginning_of_day..@date_to.end_of_day).all : @level_progression = LevelProgression.all
    # if find_site was found format the json data else show error
    if @find_site != nil
    respond_to do |format|
        format.json
    end
    else
      render json: {
        error: "No Site Found"
      }
    end
  end

  def teacher_skill_progression
    # Teacher skill progression is a replica of skill progression end point however,
    # it groups table by teacher, referenced by teacher_param - WHICH IS REQUIRED
    # find_site is defined in global params - if this is not nil find skill progressions by teacher else find all teachers
    @find_teacher != nil ? @skill_progression = SkillProgression.where(teacher_id: @find_teacher.id).where(:date_achieved => @date_from.beginning_of_day..@date_to.end_of_day).all : @skill_progression = SkillProgression.all
    # if find_teacher was found format the json data else show error
    if @find_teacher != nil
    respond_to do |format|
        format.json
    end
    else
      render json: {
        error: "No Teacher Found"
      }
    end
  end

  def teacher_level_progression
    # Teacher level progression is a replica of level progression end point however,
    # it groups table by teacher, referenced by teacher_param - WHICH IS REQUIRED
    # find_site is defined in global params - if this is not nil find level progressions by teacher else find all teachers
    @find_teacher != nil ? @level_progression = LevelProgression.where(teacher_id: @find_teacher.id).where(:date_achieved => @date_from.beginning_of_day..@date_to.end_of_day).all : @level_progression = LevelProgression.all
    # if find_teacher was found format the json data else show error
    if @find_teacher != nil
    respond_to do |format|
        format.json
    end
    else
      render json: {
        error: "No Teacher Found"
      }
    end
  end

  def student_skill_progression
    # Student skill progression is a replica of skill progression end point however,
    # it groups table by student, referenced by student_param - WHICH IS REQUIRED
    # find_student is defined in global params - if this is not nil find skill progressions by student else find all students
    @find_student != nil ? @skill_progression = SkillProgression.where(student_id: @find_student.id).where(:date_achieved => @date_from.beginning_of_day..@date_to.end_of_day).all : @skill_progression = SkillProgression.all
    # if find_student was found format the json data else show error
    if @find_student != nil
    respond_to do |format|
        format.json
    end
    else
      render json: {
        error: "No Student Found"
      }
    end
  end

  def student_level_progression
    # Student skill progression is a replica of skill progression end point however,
    # it groups table by student, referenced by student_param - WHICH IS REQUIRED
    # find_student is defined in global params - if this is not nil find level progressions by student else find all students
    @find_student != nil ? @level_progression = LevelProgression.where(student_id: @find_student.id).where(:date_achieved => @date_from.beginning_of_day..@date_to.end_of_day).all : @level_progression = LevelProgression.all
    # if find_student was found format the json data else show error
    if @find_student != nil
    respond_to do |format|
        format.json
    end
    else
      render json: {
        error: "No Student Found"
      }
    end
  end

  def skill_skill_progression
    # Skill skill progression is a replica of skill progression end point however,
    # it groups table by skill, referenced by skill_param - WHICH IS REQUIRED
    # find_skill is defined in global params - if this is not nil find skill progressions by student else find all skills
    @find_skill != nil ? @skill_progression = SkillProgression.where(student_id: @find_skill.id).where(:date_achieved => @date_from.beginning_of_day..@date_to.end_of_day).all : @skill_progression = SkillProgression.all
    # if find_skill was found format the json data else show error
    if @find_skill != nil
    respond_to do |format|
        format.json
    end
    else
      render json: {
        error: "No Skill Found"
      }
    end
  end

  def skill_level_progression
    # Skill level progression is a replica of skill progression end point however,
    # it groups table by skill, referenced by skill_param - WHICH IS REQUIRED
    # find_skill is defined in global params - if this is not nil find level progressions by student else find all skills
    @find_skill != nil ? @level_progression = LevelProgression.where(student_id: @find_skill.id).where(:date_achieved => @date_from.beginning_of_day..@date_to.end_of_day).all : @level_progression = LevelProgression.all
    # if find_skill was found format the json data else show error
    if @find_skill != nil
    respond_to do |format|
        format.json
    end
    else
      render json: {
        error: "No Skill Found"
      }
    end
  end



  private

  def set_default_format
     request.format = :json
  end

  def set_globals
    # Find from and to dates from params
    params.has_key?(:date_from) ? @date_from = Date.parse(params[:date_from]) : @date_from = Date.today - 6.months
    params.has_key?(:date_to) ? @date_to = Date.parse(params[:date_to]) : @date_to = Date.today

    # Find site
    params.has_key?(:site) ? @find_site = Site.find_by(links_reference_id: params[:site]) : @find_site = nil
    
    # Find teacher
    params.has_key?(:teacher) ? @find_teacher = Teacher.find_by(last_name: params[:teacher]) : @find_teacher = nil

    # Find student
    params.has_key?(:student) ? @find_student = Student.find_by(StuId: params[:student]) : @find_student = nil

    # Find skill
    params.has_key?(:skill) ? @find_skill = Skill.find_by(rank_id: params[:skill]) : @find_student = nil

  end

end
