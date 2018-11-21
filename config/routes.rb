Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      
      # Example URI
      # /api/v1/analyse_age_attendence/student_age_skill_attendence

      get 'analyse_age_attendence/student_age_skill_attendence'
      get 'analyse_age_attendence/student_age_level_attendence'
      get 'analyse_age_attendence/student_age_site_skill_attendence'
      get 'analyse_age_attendence/student_age_site_level_attendence'
      get 'analyse_age_attendence/student_age_teacher_skill_attendence'
      get 'analyse_age_attendence/student_age_teacher_level_attendence'
      get 'analyse_age_attendence/student_age_skill_attendence'
      get 'analyse_age_attendence/student_age_level_attendence'
      get 'analyse_age_progression/student_age_skill_progression'
      get 'analyse_age_progression/student_age_level_progression'
      get 'analyse_age_progression/student_age_site_skill_progression'
      get 'analyse_age_progression/student_age_site_level_progression'
      get 'analyse_age_progression/student_age_teacher_skill_progression'
      get 'analyse_age_progression/student_age_teacher_level_progression'
      get 'analyse_age_progression/student_age_skill_progression'
      get 'analyse_age_progression/student_age_level_progression'
      get 'analyse_attendence/skill_attendence'
      get 'analyse_attendence/level_attendence'
      get 'analyse_attendence/site_skill_attendence'
      get 'analyse_attendence/site_level_attendence'
      get 'analyse_attendence/teacher_skill_attendence'
      get 'analyse_attendence/teacher_level_attendence'
      get 'analyse_attendence/student_skill_attendence'
      get 'analyse_attendence/student_level_attendence'
      get 'analyse_progression/skill_progression'
      get 'analyse_progression/level_progression'
      get 'analyse_progression/site_skill_progression'
      get 'analyse_progression/site_level_progression'
      get 'analyse_progression/teacher_skill_progression'
      get 'analyse_progression/teacher_level_progression'
      get 'analyse_progression/student_skill_progression'
      get 'analyse_progression/student_level_progression'
    end
  end

  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  get 'data_sources/links_lesson_weekly'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
