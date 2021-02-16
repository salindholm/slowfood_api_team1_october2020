Rails.application.routes.draw do
  get 'products/index'
  namespace :api do
    resources :products, only: [:index]
  end
end