Rails.application.routes.draw do

  root 'skills#index'
  
  devise_for :users
  resources :skills

end
