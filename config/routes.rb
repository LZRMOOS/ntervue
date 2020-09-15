Rails.application.routes.draw do
  resources :ip_geolocations, only: %i[index show new edit create update]
  get '/ip_geolocations/destroy/:id', to: 'ip_geolocations#destroy', as: 'destroy_ip_geolocation'
  resources :users, only: %i[new create update edit show destroy]
  get 'login', to: 'sessions#new', as: 'new_session'
  post 'login', to: 'sessions#create', as: 'create_session'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :messages, only: %i[create index destroy]
  delete 'messages', to: 'messages#destroy_all', as: 'destroy_all'
  ##################
  # Not relevant!! #
  ##################
  resources :questions, only: :index
  put 'query', to: 'questions#query', as: 'send_query'
  root 'ip_geolocations#index'
end
