Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "users/registrations" }

  resources :users do
  	collection do
  		get 'search'
  	end
    get '/interests', to: 'users#interests'
    get '/resume', to: 'users#resume'
  end

  root 'users#index'

end

