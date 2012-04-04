class HomeController < ApplicationController
  
  def index
    @url = Image.find_by_id(1).url
  end
  
end
