# frozen_string_literal: true

# config/routes.rb
Rails.application.routes.draw do
  resources :comics
  get 'comics', to: 'comics#index'
  root to: 'comics#index'
end
