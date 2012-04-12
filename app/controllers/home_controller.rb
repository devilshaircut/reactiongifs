class HomeController < ApplicationController

  def index
    
    # Enable to the index page to show a random assortment of GIFs.
    # Select a random number from 1 to the number of Image records.
    imagecount = Image.count
    @images = []
    # If a record exists with ID matching the RNG, add it to the array. Do this until array is length 8.
    until @images.count == 16 do
      imageid = rand(imagecount) + 1
      image = Image.find_by_id(imageid)
      unless @images.include?(image) || image.nil?
        @images << image
      end
    end
    
  end
  
  def search
    
    # Enable search for Index and Search pages.
    # Make sure the user submits something usable for search. Return Image records in an array.
    if params[:search].present?
      @images = []
      @tags = Tag.where("keyword like ?", "%#{params[:search]}%").all.each do |tag|
        tagimages = tag.images
        tagimages.each do |image|
          unless @images.include?(image)
            @images << image
          end
        end
      end
    # If the user has submitted bad data, then return nil.
    else
      @images = nil
    end
    
  end
  
end
