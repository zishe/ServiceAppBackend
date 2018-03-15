Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', defaults: { format: "json" }

  namespace :admin do
    resources :products
    resources :ingredients
    resources :ingredient_types

    root to: 'products#index'
  end

  # scope '/api' do
  #   scope '/v1' do
  #     resources :products
  #   end
  # end

  namespace :api do
    namespace :v1 do
      resources :products
    end
  end
end
