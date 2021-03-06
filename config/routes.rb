Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'


  # CRUD for Posts

  resources :posts

  get '/messages', to: "messages#index"

end
