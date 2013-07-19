class Music < ActiveRecord::Base
  attr_accessible :lyrics, :m_src, :name
  has_many :makes
  has_many :artists, through: :makes
  has_many :comments
  has_many :users, through: :comments
  validates :name, presence: true
  validates :m_src, presence: true
end