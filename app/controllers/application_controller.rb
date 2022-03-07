class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def favorite_text
    if @favorite_exists
      'Unfavorite'
    else
      'Favorite'
    end
  end
  helper_method :favorite_text
end
