Rails.application.routes.draw do
  resources :arts, only: [:index, :show]
  resources :artists, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
