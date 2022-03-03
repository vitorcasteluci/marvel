# frozen_string_literal: true

# app/controllers/comics_controller.rb
class ComicsController < ApplicationController
  def index
    search = params[:search_term]
    search_params.merge!(nameStartsWith: search) if search.present?
    @comics = MarvelComics.call({})
    p @comics['data']['results']
    @comics
  end
end
