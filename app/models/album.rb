class Album < ActiveRecord::Base

  attr_accessible :title, :band_id

  belongs_to :band
  has_many :tracks
  has_many :songs, :through => :tracks

  validates :title, :presence => true

end