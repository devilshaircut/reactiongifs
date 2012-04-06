class HomeController < ApplicationController

  def index
    
    imagecount = Image.count
    @imagearray = []
    until @imagearray.count == 8 do
      imageid = rand(imagecount) + 1
      unless @imagearray.include?(imageid) || Image.find_by_id(imageid) == nil
        @imagearray += [imageid]
      end
    end
    
  end
  
  def search
    
    imagecount = Image.count
    @imagearray = []
    until @imagearray.count == 8 do
      imageid = rand(imagecount) + 1
      unless @imagearray.include?(imageid) || Image.find_by_id(imageid) == nil
        @imagearray += [imageid]
      end
    end
    
  end
  
end
