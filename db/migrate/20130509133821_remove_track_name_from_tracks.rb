class RemoveTrackNameFromTracks < ActiveRecord::Migration
  def change
    remove_column :tracks, :track_name
  end
end
