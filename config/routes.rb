# frozen_string_literal: true

Rails.application.routes.draw do
  resources :products
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root 'products#index'
  get 'user/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
