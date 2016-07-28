Rails.application.routes.draw do

  root to: 'visitors#index'

  #devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  resources :users
  resources :portions
  
  resources :products
  get 'product/shop_index' => 'products#shop_index', :as => :shop_index

  resource :cart, only: [:show]
  #resources :order, only: [:create, :update, :destroy]
  #resources :order_items, only: [:create, :update, :destroy]
  resources :order_items
  resources :orders

  #post 'order_items/place' => 'order_items#place', :as => :order_place
  post 'orders/place' => 'orders#place', :as => :order_place

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
  
end
