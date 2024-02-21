class EntriesController < ApplicationController

  def index
    #render :template => "places/index"
    @places = Entry.all
  end


  def new
      @place = Place.find_by({ "id" => params["place_id"]})

  end

  def create
  @entry = Entry.new
  @entry["title"] = params["title"]
  @entry["description"] = params["decription"]
  @entry["posted_on"] = params["posted_on"]

  @entry.save
  redirect_to "/places/#{entry["place_id"]}"
  end
end
