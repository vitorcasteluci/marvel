# frozen_string_literal: true

# config/routes.rb
Rails.application.routes.draw do
  get 'comics', to: 'comics#index'
  root to: 'comics#index'
end
