Rails.application.routes.draw do
  resources :administrators
  resources :incorporates
  resources :change_posts
  resources :parent_informations
  resources :parent_forms
  resources :parent_tops
  resources :class_posts
  resources :stampings
  root to: "calendars#index"
  resources :calendars
  resources :parents_notes 
  resources :attempts
  resources :daily_records
  get 'home/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
