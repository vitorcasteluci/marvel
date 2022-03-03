# frozen_string_literal: true

# config/routes.rb
Rails.application.routes.draw do
  root to: 'comics#index'
  get '/search' => 'comics#search'
end
