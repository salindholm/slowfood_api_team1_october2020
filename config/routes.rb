Rails.application.routes.draw do
  namespace :api do
    resources :products, only: [:index]
    resources :categories, only: [:show]
  end
end