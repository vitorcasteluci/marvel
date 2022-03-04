# frozen_string_literal: true

# app/controllers/comics_controller.rb
class ComicsController < ApplicationController
  before_action :set_page, only: [:index]

  PAGE_SIZE = 20

  def index
    @comics = Comics.all(@page, params[:search], PAGE_SIZE)
  end

  private

  def set_page
    @page = (params[:page] || 1).to_i
  end
end
