Rails.application.routes.draw do
  get 'data_sources/links_lesson_weekly'

  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
