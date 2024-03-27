class RenameOmdbidToImdbId < ActiveRecord::Migration[7.1]
  def change
    rename_column :movies, :omdb_id, :imdb_id
  end
end
