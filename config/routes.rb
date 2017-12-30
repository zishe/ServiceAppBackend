Rails.application.routes.draw do
  namespace :admin do
    resources :products
    resources :ingredients

    root to: 'products#index'
  end
end
