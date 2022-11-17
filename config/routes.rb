Rails.application.routes.draw do
  # get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "lists#index"

  # get '/lists', to: 'lists#index'

  # get '/lists/new', to: 'lists#new'
  # post '/lists', to: 'lists#create'

  # get '/lists/:id', to: 'lists#show', as: :list
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
