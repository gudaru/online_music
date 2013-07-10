class Make < ActiveRecord::Base
  attr_accessible :artist_id, :music_id
  belongs_to :music
  belongs_to :artist
end
