Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  get 'products/index'
  namespace :api do
    resources :products, only: [:index]
  end
end