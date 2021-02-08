Rails.application.routes.draw do

    get '/signup' => 'users#new', as: 'signup'
    post '/signup' => 'users#create'

    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'

    delete '/logout' => 'sessions#destroy'

    resources :users
    resources :plants
    resources :gardens
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
