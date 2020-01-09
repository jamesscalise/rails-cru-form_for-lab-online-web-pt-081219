class ChangeGenreIdDataTypeToSongs < ActiveRecord::Migration[5.0]
  def change
    change_column :songs, :genre_id, :integer
  end
end
