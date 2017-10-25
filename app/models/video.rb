class Video < ApplicationRecord
  # belongs_to :video_genre #videoはvideo_genreに所属している
  #validates :youtube_id, presence :true #youtube_idの値が空じゃないか検証する (値があれば保存)
  has_many :video_genre
  has_many :genres, through: :video_genre

  #accepts_nested_attributes_for :video_genres
end
