# frozen_string_literal: true

require 'rails_helper'

describe MarvelComicsApi do
  describe 'get' do
    it 'get all the comics' do
      params = { offset: 0, limit: 20, ts: 'dpEVnqngEh6QRwPvEwkVtA', apikey: 'b8afdae5d2d57de8815f783682c5465a', hash: '63796265f5b0c77f5d6e8bfaed626e58' }
      result = MarvelComicsApi.call(params)
      expect(result['code']).to eq(200)
    end
  end
end
