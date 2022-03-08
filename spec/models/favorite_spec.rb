# frozen_string_literal: true

require 'rails_helper'

describe Favorite, type: :model do
  it 'its valid with valid attributes' do
    expect(Favorite.create(user_id: 1, comic_id: 1)).to be_valid
  end
  it 'its not valid without user_id' do
    expect(Favorite.create(user_id: nil, comic_id: 1)).not_to be_valid
  end
  it 'its not valid without comic_id' do
    expect(Favorite.create(user_id: 1, comic_id: nil)).not_to be_valid
  end
end
