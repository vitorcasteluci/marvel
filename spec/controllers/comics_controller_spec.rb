# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ComicsController, type: :controller do
  let(:user) { create(:user) }
  before :each do
    sign_in user
  end
  describe 'GET index' do
    before do
      get :index
    end
    it 'returns a successful response' do
      expect(response).to be_successful
    end

    it 'assigns @comics' do
      comics = Comics.all(1, nil, 20)
      expect(assigns(:comics)).to eq(comics)
    end

    it 'renders the index template' do
      expect(response).to render_template('index')
    end
  end
end
