class AddGenreIdToVideoGenres < ActiveRecord::Migration[5.1]
  def change
    add_column :video_genres, :genre_id, :integer
    add_column :video_genres, :genre, :string
    add_column :video_genres, :youtube_id, :string
  end
end
