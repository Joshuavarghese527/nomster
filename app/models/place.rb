class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, :presence => true, :length => { :minimum => 4 }
  validates :description, :presence => true
  validates :address, :presence => true
  has_many :comments
  has_many :photos
end