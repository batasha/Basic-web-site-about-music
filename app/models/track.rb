class Track < ActiveRecord::Base

  attr_accessible :album_id, :song_id

  belongs_to :album
  belongs_to :song

  validates :album_id, :presence => true
  validates :song_id, :presence => true
end