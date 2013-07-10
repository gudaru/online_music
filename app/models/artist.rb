class Artist < ActiveRecord::Base
  attr_accessible :info, :name
  has_many :makes
  has_many :musics, through: :makes
end
