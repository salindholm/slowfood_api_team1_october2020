Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    resources :products, only: [:index]
    resources :orders, only: [:create]
  end
end
