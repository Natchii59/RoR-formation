Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#home'

  get '/bonjour(/:name)', to: 'pages#salut', as: 'salut'

  resources :posts

  resources :categories

end
