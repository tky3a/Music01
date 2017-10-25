class VideoGenre < ApplicationRecord
  # has_many :videos #video_genreが複数のvideoを所有する
  belongs_to :genre, optional: true
  belongs_to :video, optional: true



end
