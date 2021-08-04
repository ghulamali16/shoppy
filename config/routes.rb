# frozen_string_literal: true

Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :products
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  resources :charges, only: [:new, :create]
  root 'products#index'
  get 'user/show'
  get 'search',to: 'products#search'
  mount Commontator::Engine => '/commontator'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
