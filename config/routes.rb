Rails.application.routes.draw do
  resources :restrictions
  resources :cuisines
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
