# frozen_string_literal: true

# Favorites Controller
class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:update]
  def update
    favorite = Favorite.find_by(comic_id: params[:comic][:id])
    if favorite.nil?
      Favorite.create(comic_id: params[:comic][:id], user: current_user)
      @favorite_exists = true
    else
      favorite.destroy
      @favorite_exists = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  private

  def set_favorite
    Favorite.find_by(comic_id: params[:comic][:id], user: current_user).nil?
  end
end
