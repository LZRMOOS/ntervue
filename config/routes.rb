Rails.application.routes.draw do
  resources :ip_geolocations, only: %i[index show new edit create update]
  get '/ip_geolocations/destroy/:id', to: 'ip_geolocations#destroy', as: 'destroy_ip_geolocation'
  resources :users, only: %i[new create update edit show destroy]
  get 'login', to: 'sessions#new', as: 'new_session'
  post 'login', to: 'sessions#create', as: 'create_session'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :messages, only: %i[create index destroy]
  delete 'messages', to: 'messages#destroy_all', as: 'destroy_all'
  root 'ip_geolocations#index'
  ##################
  # Not relevant!! #
  ##################
  namespace :questions do
    resources :development_qs do
      collection do
        get :alerting
        get :sorting
      end
    end
    resources :mysql_qs, only: :index
    put 'query', to: 'mysql_qs#query', as: 'send_query'
    resources :sorting_qs, only: :index
  end
end
