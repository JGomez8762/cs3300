Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  root "projects#index" # added per Part 1A instructions
  resources :pojects
  resources :project_pages
  resources :projects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
