Rails.application.routes.draw do
  resources :rooms, only: [:index, :show]
  resources :house_plants, only: [:index, :show]
end
