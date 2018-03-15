# == Route Map
#
#                     Prefix Verb     URI Pattern                                                                       Controller#Action
#           new_user_session GET      /auth/sign_in(.:format)                                                           devise_token_auth/sessions#new
#               user_session POST     /auth/sign_in(.:format)                                                           devise_token_auth/sessions#create
#       destroy_user_session DELETE   /auth/sign_out(.:format)                                                          devise_token_auth/sessions#destroy
#          new_user_password GET      /auth/password/new(.:format)                                                      devise_token_auth/passwords#new
#         edit_user_password GET      /auth/password/edit(.:format)                                                     devise_token_auth/passwords#edit
#              user_password PATCH    /auth/password(.:format)                                                          devise_token_auth/passwords#update
#                            PUT      /auth/password(.:format)                                                          devise_token_auth/passwords#update
#                            POST     /auth/password(.:format)                                                          devise_token_auth/passwords#create
#   cancel_user_registration GET      /auth/cancel(.:format)                                                            devise_token_auth/registrations#cancel
#      new_user_registration GET      /auth/sign_up(.:format)                                                           devise_token_auth/registrations#new
#     edit_user_registration GET      /auth/edit(.:format)                                                              devise_token_auth/registrations#edit
#          user_registration PATCH    /auth(.:format)                                                                   devise_token_auth/registrations#update
#                            PUT      /auth(.:format)                                                                   devise_token_auth/registrations#update
#                            DELETE   /auth(.:format)                                                                   devise_token_auth/registrations#destroy
#                            POST     /auth(.:format)                                                                   devise_token_auth/registrations#create
#        auth_validate_token GET      /auth/validate_token(.:format)                                                    devise_token_auth/token_validations#validate_token
#               auth_failure GET      /auth/failure(.:format)                                                           devise_token_auth/omniauth_callbacks#omniauth_failure
#                            GET      /auth/:provider/callback(.:format)                                                devise_token_auth/omniauth_callbacks#omniauth_success
#                            GET|POST /omniauth/:provider/callback(.:format)                                            devise_token_auth/omniauth_callbacks#redirect_callbacks
#           omniauth_failure GET|POST /omniauth/failure(.:format)                                                       devise_token_auth/omniauth_callbacks#omniauth_failure
#                            GET      /auth/:provider(.:format)                                                         redirect(301)
#             admin_products GET      /admin/products(.:format)                                                         admin/products#index
#                            POST     /admin/products(.:format)                                                         admin/products#create
#          new_admin_product GET      /admin/products/new(.:format)                                                     admin/products#new
#         edit_admin_product GET      /admin/products/:id/edit(.:format)                                                admin/products#edit
#              admin_product GET      /admin/products/:id(.:format)                                                     admin/products#show
#                            PATCH    /admin/products/:id(.:format)                                                     admin/products#update
#                            PUT      /admin/products/:id(.:format)                                                     admin/products#update
#                            DELETE   /admin/products/:id(.:format)                                                     admin/products#destroy
#          admin_ingredients GET      /admin/ingredients(.:format)                                                      admin/ingredients#index
#                            POST     /admin/ingredients(.:format)                                                      admin/ingredients#create
#       new_admin_ingredient GET      /admin/ingredients/new(.:format)                                                  admin/ingredients#new
#      edit_admin_ingredient GET      /admin/ingredients/:id/edit(.:format)                                             admin/ingredients#edit
#           admin_ingredient GET      /admin/ingredients/:id(.:format)                                                  admin/ingredients#show
#                            PATCH    /admin/ingredients/:id(.:format)                                                  admin/ingredients#update
#                            PUT      /admin/ingredients/:id(.:format)                                                  admin/ingredients#update
#                            DELETE   /admin/ingredients/:id(.:format)                                                  admin/ingredients#destroy
#     admin_ingredient_types GET      /admin/ingredient_types(.:format)                                                 admin/ingredient_types#index
#                            POST     /admin/ingredient_types(.:format)                                                 admin/ingredient_types#create
#  new_admin_ingredient_type GET      /admin/ingredient_types/new(.:format)                                             admin/ingredient_types#new
# edit_admin_ingredient_type GET      /admin/ingredient_types/:id/edit(.:format)                                        admin/ingredient_types#edit
#      admin_ingredient_type GET      /admin/ingredient_types/:id(.:format)                                             admin/ingredient_types#show
#                            PATCH    /admin/ingredient_types/:id(.:format)                                             admin/ingredient_types#update
#                            PUT      /admin/ingredient_types/:id(.:format)                                             admin/ingredient_types#update
#                            DELETE   /admin/ingredient_types/:id(.:format)                                             admin/ingredient_types#destroy
#                 admin_root GET      /admin(.:format)                                                                  admin/products#index
#            api_v1_products GET      /api/v1/products(.:format)                                                        api/v1/products#index
#                            POST     /api/v1/products(.:format)                                                        api/v1/products#create
#         new_api_v1_product GET      /api/v1/products/new(.:format)                                                    api/v1/products#new
#        edit_api_v1_product GET      /api/v1/products/:id/edit(.:format)                                               api/v1/products#edit
#             api_v1_product GET      /api/v1/products/:id(.:format)                                                    api/v1/products#show
#                            PATCH    /api/v1/products/:id(.:format)                                                    api/v1/products#update
#                            PUT      /api/v1/products/:id(.:format)                                                    api/v1/products#update
#                            DELETE   /api/v1/products/:id(.:format)                                                    api/v1/products#destroy
#         rails_service_blob GET      /rails/active_storage/blobs/:signed_id/*filename(.:format)                        active_storage/blobs#show
#       rails_blob_variation GET      /rails/active_storage/variants/:signed_blob_id/:variation_key/*filename(.:format) active_storage/variants#show
#         rails_blob_preview GET      /rails/active_storage/previews/:signed_blob_id/:variation_key/*filename(.:format) active_storage/previews#show
#         rails_disk_service GET      /rails/active_storage/disk/:encoded_key/*filename(.:format)                       active_storage/disk#show
#  update_rails_disk_service PUT      /rails/active_storage/disk/:encoded_token(.:format)                               active_storage/disk#update
#       rails_direct_uploads POST     /rails/active_storage/direct_uploads(.:format)                                    active_storage/direct_uploads#create
# 

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', defaults: { format: 'json' }

  namespace :admin do
    resources :products
    resources :ingredients
    resources :ingredient_types

    root to: 'products#index'
  end

  namespace :api do
    namespace :v1 do
      resources :products
    end
  end
end
