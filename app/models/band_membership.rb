class BandMembership < ActiveRecord::Base
  attr_accessible :band_id, :artist_id

  belongs_to :band
  belongs_to :artist

  #validates :band, :presence => true
  #validates :artist, :presence => true
  #validates :band, :uniqueness => { :scope => :artist,
  #  :message => "You Can Only Be in a Band Once!"}

end