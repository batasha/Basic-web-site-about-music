class Track < ActiveRecord::Base

  attr_accessible :track_name, :album_id, :song_id

  belongs_to :album
  belongs_to :song

  validates :track_name, :presence => true
  validates :album_id, :presence => true
  validates :song_id, :presence => true
end