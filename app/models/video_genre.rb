class VideoGenre < ApplicationRecord
  # has_many :videos #video_genreが複数のvideoを所有する
  belongs_to :genre
  belongs_to :video




end
