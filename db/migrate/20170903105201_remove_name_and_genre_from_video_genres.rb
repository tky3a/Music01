class RemoveNameAndGenreFromVideoGenres < ActiveRecord::Migration[5.1]
  def change
    remove_column(:video_genres, :genre)
    remove_column(:video_genres, :name)
  end
end
