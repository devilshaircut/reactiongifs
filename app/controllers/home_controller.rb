class HomeController < ApplicationController
  
  def index
    
    @image = Image.new
    if Image.find_by_url(params[:image]["url"]) == nil
      @image.url = params[:image]["url"]
      @image.description = params[:image]["description"]
      # @image.update_attributes(:url => params[:image]["url"], :description => params[:image]["description"])
      @image.save
      if params[:image]["tags"] != nil
        @tag = Tag.find_or_create_by_keyword(params[:image]["tags"])
        @tag.keyword = params[:image]["tags"]
        @tag.save
        @imagestag = ImagesTag.new
        @imagestag.image_id = @image.id
        @imagestag.tag_id = @tag.id
        @imagestag.save
      end
    end
    
    @imagecount = Image.count
    
  end
  
end
