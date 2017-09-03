class VideoGenre < ApplicationRecord
  has_many :videos #video_genreが複数のvideoを所有する
end
