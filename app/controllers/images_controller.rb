class ImagesController < ApplicationController
  
  def new
    @image = Image.new
  end
  
  def show
    @showimage = Image.find_by_id(params[:id])
  end
  
  def create
    
    # Create a new Image record from user-submitted data (including URL, description, and keywords).
    # Start creating a new image record.
    @image = Image.new
    # Make sure the user has submitted valid data.
    if params[:image] != nil && params[:image]["url"].strip != ""
      # Make sure a record for this image does not already exist. Edit URL and description.
      if Image.find_by_url(params[:image]["url"]) == nil
        @image.url = params[:image]["url"]
        @image.description = params[:image]["description"]
        @image.save
        # Only create Tag records if the user has submitted tag data.
        if params[:image]["tags"] != nil
          # Split comma-separated string and remove whitespace. From the created array, create Tag records.
          tagsarray = params[:image]["tags"].split(",").collect { |c| c.strip }
          # Create the Image record's tags. Simultaneously, build the relationship in the join table.
          tagsarray.each do |t|
            @image.tags << Tag.find_or_create_by_keyword(t)
          end
        end
        # The record has been created; redirect user to a page with the image in it.
        redirect_to image_path(@image)
      else
        # The record already exists; redirect user back to the original form.
        redirect_to new_image_path, :alert => "This image already exists."
      end
    else
      # The user submitted bad data; redirect user back to the original form.
      redirect_to new_image_path, :alert => "All fields must be complete."
    end

  end
  
  def edit
  end
  
  def index
    
    # Enable to the image index page to show a random assortment of GIFs.
    # Select a random number from 1 to the number of Image records.
    imagecount = Image.count
    @imagearray = []
    # If a record exists with ID matching the RNG, add it to the array. Do this until array is length 8.
    until @imagearray.count == 12 do
      imageid = rand(imagecount) + 1
      unless @imagearray.include?(imageid) || Image.find_by_id(imageid) == nil
        @imagearray += [imageid]
      end
    end
    
  end
  
end


















