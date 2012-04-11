class ImagesController < ApplicationController
  
  def edit
    @image = Image.find params[:id]
  end
  
  def update
    @image = Image.find params[:id] 
    if params[:image]["description"].present? && params[:image]["tags"].present?
      @image.description = params[:image]["description"]
      @image.tags = []
      @image.save
      tagsarray = params[:image]["tags"].split(",").collect { |c| c.strip }
      tagsarray.each do |t|
        @image.tags << Tag.find_or_create_by_keyword(t)
        @image.save
      end
      redirect_to edit_image_path(@image), :alert => "Image updated. Great success!"
    else
      redirect_to edit_image_path(@image), :alert => "All fields must be complete."
    end
    
  end
  
  def new
    @image = Image.new
  end
  
  def create
    
    # Create a new Image record from user-submitted data (including URL, description, and keywords).
    # Start creating a new image record.
    @image = Image.new
    # Make sure the user has submitted valid data.
    if params[:image].present? && params[:image]["url"].present?
      # Make sure a record for this image does not already exist. Edit URL and description.
      if Image.find_by_url(params[:image]["url"]).nil?
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
  
  def index
    
    # Enable to the image index page to show a random assortment of GIFs.
    # Select a random number from 1 to the number of Image records.
    imagecount = Image.count
    @images = []
    # If a record exists with ID matching the RNG, add it to the array. Do this until array is length 8.
    until @images.count == 12 do
      imageid = rand(imagecount) + 1
      img = Image.find_by_id(imageid)
      unless @images.include?(imageid) || img.nil?
        @images << img
      end
    end
    
  end
  
  def show
    @image = Image.find params[:id]
  end
  
end


















