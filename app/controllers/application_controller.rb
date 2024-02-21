class ApplicationController < ActionController::Base

  def index
    render :template => "places/index"
  end
end
