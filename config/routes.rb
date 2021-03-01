Rails.application.routes.draw do
  namespace :api do
    get 'orders/create'
  end
  mount_devise_token_auth_for 'User', at: 'api/auth'
  get 'products/index'
  namespace :api do
    resources :products, only: [:index]
  end
end