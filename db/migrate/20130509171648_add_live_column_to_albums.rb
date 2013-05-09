class AddLiveColumnToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :live, :integer
  end
end
