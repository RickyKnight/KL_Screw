Screw::Application.routes.draw do
  get "admin/index"
  post 'jobs/new', 'jobs#new'

  resources :answers 

  resources :applications

  devise_for :users

  get "home/index"

  resources :trades

  resources :jobs

  resources :jobs do 
    put :complete, :on => :collection
  end

  resources :users

  root to: 'home#index', as: 'home'

end
