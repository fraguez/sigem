Rails.application.routes.draw do
  resources :neighborhoods
  resources :currency_codes
  resources :type_codes
  resources :messages
  resources :document_authorizations
  resources :type_document_references
  resources :document_references
  resources :taxes
  resources :payment_types
  resources :condition_sales
  resources :id_types
  resources :type_vouchers
  resources :check_outs
  resources :check_ins
  root to: 'dashboard#index'
  
  devise_for :users

  resources :sales do
    resources :sale_details
  end

  resources :managers

  resources :items
  resources :units
  resources :towns
  resources :categories
  resources :brands
  resources :cities
  resources :states
  resources :districts
  resources :customers
  resources :customer_types
  resources :sexes
  resources :customermanagers
  resources :vacations
  resources :employees
  resources :providermanagerdetails
  resources :providermanagers
  resources :providers
  resources :provider_types
  resources :customermanagerdetails

  #get 'validate_suggested_brand/index'
  get '/brands_suggestion', to: 'brands_suggestion#index'
  get '/validate_suggested_brand', to: 'validate_suggested_brand#index'


  #get 'validate_suggested_item/index'
  get '/items_suggestion', to: 'items_suggestion#index'
  get '/validate_suggested_item', to: 'validate_suggested_item#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
