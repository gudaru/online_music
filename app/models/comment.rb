class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :music
  attr_accessible :content, :music_id, :user_id
end
