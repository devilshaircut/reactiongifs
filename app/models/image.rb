class Image < ActiveRecord::Base
  attr_accessible :url
  has_many :images_tags
  has_many :tags, :through => :images_tags
end
