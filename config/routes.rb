Rails.application.routes.draw do
  resources :customer_journeys
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
