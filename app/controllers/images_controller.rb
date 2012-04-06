class ImagesController < ApplicationController
  
  def new
    @image = Image.new
  end
  
  def create
    @image = Image.new
    unless params[:image] == nil
      if Image.find_by_url(params[:image]["url"]) == nil
        @image.url = params[:image]["url"]
        @image.description = params[:image]["description"]
        @image.save
        if params[:image]["tags"] != nil
          @image.tags << Tag.find_or_create_by_keyword(params[:image]["tags"])
        end
      end
    end
    redirect_to new_image_path
  end
  
  def edit
  end
  
  def show
    @imageurl = @image.url
  end
  
  def index
    
    @imagecount = Image.count
    @imagearray = []
    until @imagearray.count == 4 do
      imageid = rand(@imagecount) + 1
      unless @imagearray.include?(imageid)
        @imagearray += [imageid]
      end
    end
    
  end
  
end
