# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :favorite_img
  helper_method :set_favorite

  def set_favorite(comic)
    if Favorite.find_by(user_id: current_user.id, comic_id: comic[:id]).nil?
      '/assets/heart_off.png'
    else
      '/assets/heart_on.png'
    end
  end

  def favorite_img
    if @favorite_exists
      '/assets/heart_on.png'
    else
      '/assets/heart_off.png'
    end
  end
end
