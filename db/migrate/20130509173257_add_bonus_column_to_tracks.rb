class AddBonusColumnToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :bonus, :integer
  end
end
