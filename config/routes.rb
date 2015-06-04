Rails.application.routes.draw do

  root 'users#index'
  devise_for :users
  get 'users/:id', to: "users#show", as: "user_skill"
  resources :skills do
  	member do
  		put "daps", to: "skills#upvote"
  	end
  resources :comments
  end

end
