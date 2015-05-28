Rails.application.routes.draw do

  root 'skills#index'
  
  devise_for :users
  resources :skills do
  	member do
  		put "daps", to: "skills#upvote"
  	end
  resources :comments
  end

end
