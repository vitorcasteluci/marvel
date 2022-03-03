# frozen_string_literal: true

require 'securerandom'
require 'digest'

class MarvelComics
  MARVEL_API_ENDPOINT = 'https://gateway.marvel.com/v1/public/'

  attr_reader :conn

  def initialize(conn)
    @conn = Faraday.new(MARVEL_API_ENDPOINT)
  end

  def self.call(*arg, &block)
    new(*arg, &block).comics(arg[0])
  end

  def comics(query_params = {})
    ActiveSupport::JSON.decode(
        conn.get('comics', query_params.merge(authentication_params))
        .body
      )
  end

  private

  def authentication_params
    ts = timestamp
    { ts: ts,
      apikey: public_api_key,
      hash: generate_md5(ts) }
  end

  def public_api_key
    'b8afdae5d2d57de8815f783682c5465a'
  end

  def private_api_key
    '10deff2c47187df96b339ba9a66cfbad3d291ebd'
  end

  def timestamp
    SecureRandom.urlsafe_base64
  end

  def generate_md5(timestamp)
    Digest::MD5.new
               .update("#{timestamp}#{private_api_key}#{public_api_key}").to_s
  end
end
