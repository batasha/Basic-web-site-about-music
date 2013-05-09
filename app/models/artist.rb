class Artist < ActiveRecord::Base
  attr_accessible :name, :band_ids

  has_many :band_memberships
  has_many :bands, :through  => :band_memberships
  has_many :albums, :through => :bands
  has_many :tracks, :through => :albums
  has_many :songs, :through  => :tracks

  validates :name, :presence => true
end