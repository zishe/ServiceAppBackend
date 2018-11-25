Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"

  mount_devise_token_auth_for "User", at: "auth", defaults: { format: "json" }

  namespace :admin do
    resources :products
    resources :categories
    resources :ingredients
    resources :ingredient_types
    namespace :acts_as_taggable_on do
      resources :tags
      resources :taggings
    end

    root to: "products#index"
  end

  namespace :api do
    namespace :v1 do
      resources :products
      resources :categories
    end
  end
end
