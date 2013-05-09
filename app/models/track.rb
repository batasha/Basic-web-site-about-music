class Track < ActiveRecord::Base

  attr_accessible :album_id, :song_id, :bonus, :lyrics

  has_one :band, :through => :album
  belongs_to :album
  belongs_to :song

  validates :album_id, :presence => true
  validates :song_id, :presence => true
  validates :bonus, :inclusion => {:in => (0..1)},
    :allow_nil => true


  def title
    self.song.song_title
  end


end