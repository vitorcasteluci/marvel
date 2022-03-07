# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :favorite_text

  def favorite_text
    if @favorite_exists
      '/assets/heart_on.png'
    else
      '/assets/heart_off.png'
    end
  end
end
