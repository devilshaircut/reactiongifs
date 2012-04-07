class HomeController < ApplicationController

  def index
    
    # Enable to the index page to show a random assortment of GIFs.
    # Select a random number from 1 to the number of Image records.
    imagecount = Image.count
    @imagearray = []
    # If a record exists with ID matching the RNG, add it to the array. Do this until array is length 8.
    until @imagearray.count == 8 do
      imageid = rand(imagecount) + 1
      unless @imagearray.include?(imageid) || Image.find_by_id(imageid) == nil
        @imagearray += [imageid]
      end
    end
    
  end
  
  def search
    
    # Enable search for Index and Search pages.
    # Make sure the user submits something usable for search. Return Image records in an array.
    if params[:search] != nil && Tag.find_by_keyword(params[:search]) != nil && params[:search].strip != ""
      @searchresult = Tag.find_by_keyword(params[:search]).images
    # If the user has submitted bad data, then return nil.
    else
      @searchresult = nil
    end
    
  end
  
end
