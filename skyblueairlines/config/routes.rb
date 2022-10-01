Rails.application.routes.draw do
  get 'sessions/index'
  get 'home/index'
  resources :admins
  resources :reservations
  resources :flights do
    resources :reservations, module: :flights
  end
  root 'home#index'
  resources :users do
     member do
  	patch :update_filter
  	put :update_filter
     end
  end
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: "users#new", as: 'signup'
  get 'login', to: "sessions#new", as: 'login'
  get 'logout', to: "sessions#destroy", as: 'logout'
  # put 'filterC', to:"flights#user_flightsearch", as: 'filterC'
  get 'filter', to: "users#filter", as: 'filter'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
