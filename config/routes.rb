Rails.application.routes.draw do
  post 'auth_user', to: 'authentication#authenticate_user'
  get 'home', to: 'home#index'
  devise_for :users


	# get '/patients/:id', to: 'patients#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
