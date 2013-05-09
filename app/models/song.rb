class Song < ActiveRecord::Base
  attr_accessible :song_title

  has_many :tracks
  has_many :albums, :through => :tracks
  has_many :bands, :through => :albums

  validates :song_title, :presence => true
end