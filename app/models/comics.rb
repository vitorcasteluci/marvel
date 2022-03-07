# frozen_string_literal: true

# Class for serializing and pagination of the comics
class Comics < OpenStruct
  def self.all(page, search = nil, limit)
    page = 1 if page.zero?
    limit = 16 if limit.zero?
    offset = (page - 1) * limit

    params = { offset: offset, limit: limit }
    params.merge!(titleStartsWith: search) if search.present?
    comics = MarvelComicsApi.call(params)
    {
      comics: comics['data']['results'].map { |comic| serialize_comic(comic) },
      search: search
    }
  end

  def self.serialize_comic(comic)
    {
      id: comic['id'],
      title: comic['title'],
      thumbnail: comic['thumbnail']['path'] +
        '.' +
        comic['thumbnail']['extension'],
      favorite: false
    }
  end
end
