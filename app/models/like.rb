class Like < ActiveRecord::Base
  attr_accessible :music_id, :user_id
  belongs_to :user
  belongs_to :music
end
