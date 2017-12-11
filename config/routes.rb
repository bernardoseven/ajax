Rails.application.routes.draw do

  resources :tasks
  
  resources :finishes, only: [:create, :destroy]
  
  root to: 'tasks#index'

end
