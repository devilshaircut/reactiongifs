class ImagesTag < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :tag
  belongs_to :image
end
