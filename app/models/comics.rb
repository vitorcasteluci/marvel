# frozen_string_literal: true

class Comics < OpenStruct
  def self.all(page = 1, search = nil)
    page = 1 if page.zero?
    limit = 16
    offset = (page - 1) * limit

    params = { offset: offset, limit: limit }
    params.merge!(titleStartsWith: search) if search.present?
    comics = MarvelComics.call(params)
    offset = comics['data']['offset']
    previous_page = offset > 0
    count = comics['data']['count']
    total = comics['data']['total']
    next_page = offset + count < total
    limit = comics['data']['limit']
    current_page = offset / limit + 1
    {
      comics: comics['data']['results'].map { |comic| serialize_comic(comic) },
      start_index: offset + 1,
      end_index: offset + count,
      previous_page: previous_page,
      search: search,
      next_page: next_page,
      current_page: current_page,
      limit: limit
    }
  end

  def self.serialize_comic(comic)
    {
      id: comic['id'],
      title: comic['title'],
      thumbnail: comic['thumbnail']['path'] + '.' + comic['thumbnail']['extension']
    }
  end
end
