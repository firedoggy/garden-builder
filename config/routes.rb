Rails.application.routes.draw do
    root "sessions#home"

    get '/signup' => 'users#new', as: 'signup'
    post '/signup' => 'users#create'

    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'

    delete '/logout' => 'sessions#destroy'

    post 'plants/search' => 'plants#search', as: 'plants_search'

    resources :users
    resources :plants
    resources :gardens
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
