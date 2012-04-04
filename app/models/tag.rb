class Tag < ActiveRecord::Base
  attr_accessible :keyword
  has_many :images_tags
  has_many :images, :through => :images_tags
end
