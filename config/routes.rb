Rails.application.routes.draw do
  resources :blogs
  resources :projects
  resources :courses
  root 'welcome#index'

  resources :students do 
     member do  
      get :personal_details 
     end 

    #  another form
    #  get :personal_details  on: :member

     collection do 
        get :activity
     end

    #  another form
    #  get :activity  on: :collection
  end

  namespace :admin do 
    resources :students
  end


  # scope module: :admin do 
  #   resources :students
  # end

  get 'welcome/about'
  get 'about', to: 'welcome#about'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
