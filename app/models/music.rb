class Music < ActiveRecord::Base
  attr_accessible :lyrics, :m_src, :name
  has_many :makes
  has_many :artists, through: :makes
end
