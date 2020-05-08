Rails.application.routes.draw do
  resources :ip_geolocations, only: [:index, :show, :new, :edit, :create, :update]
  get '/ip_geolocations/destroy/:id', to: 'ip_geolocations#destroy', as: 'destroy_ip_geolocation'
  resources :users, only: [:new, :create, :update, :edit, :show, :destroy]
  get 'login', to: 'sessions#new', as: 'new_session'
  post 'login', to: 'sessions#create', as: 'create_session'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  root 'ip_geolocations#index'
end
