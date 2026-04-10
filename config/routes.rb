# config/routes.rb
# main routing file for Lumiere

Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :products, only: [ :index, :show ] do
    resources :reviews, only: [ :create ]
  end

  resource :cart, only: [ :show ]
  resources :cart_items, only: [ :create, :update, :destroy ]

  resources :orders, only: [ :index, :show, :new, :create ]
end
