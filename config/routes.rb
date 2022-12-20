Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'
  resources :lists, only: %i[new create index show] do
    resources :bookmark, only: %i[new create]
  end
  resources :bookmark, only: [:destroy]
end
