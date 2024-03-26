class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster
      t.references :user, null: false, foreign_key: true
      t.string :omdb_id

      t.timestamps
    end
  end
end
