class AddGenreIdToVideoGenres < ActiveRecord::Migration[5.1]
  def change
    add_column :video_genres, :genre_id, :integer, index: true
    add_column :video_genres, :genre, :string
    add_column :video_genres, :video_id, :integer, index: true
  end
end
