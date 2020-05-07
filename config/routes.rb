Rails.application.routes.draw do
  resources :ip_geolocations, only: [:index, :show, :new, :edit, :create, :update]
  get '/ip_geolocations/destroy/:id', to: 'ip_geolocations#destroy', as: 'destroy_ip_geolocation'
  root 'ip_geolocations#index'
end
