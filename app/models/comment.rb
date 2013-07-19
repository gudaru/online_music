class Comment < ActiveRecord::Base
  attr_accessible :content, :music_id, :user_id
  belongs_to :user
  belongs_to :music
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  validates :music_id, presence: true
end
