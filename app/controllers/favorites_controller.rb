# frozen_string_literal: true

class FavoritesController < ApplicationController
  def update
    favorite = Favorite.where(comic_id: params[:comic][:id])
    if favorite == []
      # Create favorite
      Favorite.create(comic_id: params[:comic][:id], user: current_user)
      @favorite_exists = true
    else
      # Delete the favorite
      favorite.destroy_all
      @favorite_exists = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
