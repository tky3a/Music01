class Genre < ApplicationRecord
  has_many :video_genre
  has_many :video, through: :video_genre

  #accepts_nested_attributes_for :video_genres, allow_destroy: true
end
