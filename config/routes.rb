Rails.application.routes.draw do

  root to: 'tasks#index'

  resources :tasks
  
  resources :finishes, only: [:create, :update]

end
