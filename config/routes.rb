Rails.application.routes.draw do
  get 'products/index'
  namespace :api do
    namespace :v0 do
      resources :pings, only: [:index], constraints: { format: 'json' }
    end
  end
end