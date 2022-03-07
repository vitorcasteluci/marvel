# frozen_string_literal: true

# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  get 'favorites/update'
  resources :comics
  get 'comics', to: 'comics#index'
  root to: 'comics#index'
end
