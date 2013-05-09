class Album < ActiveRecord::Base

  attr_accessible :title, :band_id, :live

  belongs_to :band
  has_many :tracks
  has_many :songs, :through => :tracks

  validates :title, :presence => true
  validates :live, :inclusion => {:in => (0..1)},
    :allow_nil => true

end