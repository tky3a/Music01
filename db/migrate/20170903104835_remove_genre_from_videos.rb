class RemoveGenreFromVideos < ActiveRecord::Migration[5.1]
  def change
    remove_column(:videos, :genre)
  end
end
