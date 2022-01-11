Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #session routes for login / logout
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  #user route
  get '/me', to: 'users#show'
  post '/signup', to: 'users#create'
end
