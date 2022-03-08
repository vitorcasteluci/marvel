class Favorite < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :comic_id, presence: true
end
