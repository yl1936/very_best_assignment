Rails.application.routes.draw do
  resources :neighborhoods
  resources :users
  resources :cuisines
  resources :bookmarks
  resources :venues
  resources :dishes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
