Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/:id', to: 'users#show', as: 'user'

  root to: "welcomes#index"

  get "/login", to: 'sessions#new'

  post '/sessions', to: 'sessions#create'

  get '/sign_up', to: 'users#new', as: 'sign_up'

  resources :users

end
