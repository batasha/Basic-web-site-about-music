class CreateSong < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_title

      t.timestamps
    end
  end
end
