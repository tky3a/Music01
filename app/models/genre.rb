class Genre < ApplicationRecord
  has_many :video_genre
  has_many :video, through: :video_genre
end
