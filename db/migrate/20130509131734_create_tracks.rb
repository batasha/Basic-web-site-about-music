class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :track_name
      t.integer :album_id
      t.integer :song_id

      t.timestamps
    end
  end
end
