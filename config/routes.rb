Rails.application.routes.draw do
  resources :blogs
  resources :projects
  resources :courses
  root 'welcome#index'

  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
