Rails.application.routes.draw do

  root 'users#index'
  devise_for :users
  resources :users do 
  resources :skills do
  	member do
  		put "daps", to: "skills#upvote"
  	end
  resources :comments
  end
end
end
