Rails.application.routes.draw do
namespace :api do
  namespace :v1 do
    # resources :players, only: [:create, :update, :destroy]
    post '/auth', to: 'auth#create'
    get '/current_player', to: 'auth#show'
  end
end
resources :players
resources :teams
resources :games
resources :matches
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
