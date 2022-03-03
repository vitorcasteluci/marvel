# frozen_string_literal: true

# app/controllers/comics_controller.rb
class ComicsController < ApplicationController
  def index
    @comics = Comics.all(params[:page].to_i, params[:search])
  end
end
