class ApplicationController < ActionController::Base

  def index
    #render :template => "places/index"
    @places = Place.all
  end
end

def create
  @place = Place.new
  @place["name"] = params["name"]

  @place.save
  redirect_to "/places"
end