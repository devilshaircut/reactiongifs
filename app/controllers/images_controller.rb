class ImagesController < ApplicationController
  
  def new
    @image = Image.new
  end
  
  def show
    @imageurl = Image.find_by_id(params[:id]).url
  end
  
  def create
    @image = Image.new
    if params[:image] != nil
      if Image.find_by_url(params[:image]["url"]) == nil
        @image.url = params[:image]["url"]
        @image.description = params[:image]["description"]
        @image.save
        if params[:image]["tags"] != nil
          @image.tags << Tag.find_or_create_by_keyword(params[:image]["tags"])
        end
        redirect_to :action => "show", :id => @image.id
      else
        redirect_to new_image_path
      end
    else
      redirect_to new_image_path
    end

  end
  
  def edit
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
