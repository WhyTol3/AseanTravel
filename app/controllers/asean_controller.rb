class AseanController < ApplicationController
  def index
  	@countries = Country.all
  	@hot = Place.last(3)
  	@images = PlaceImage.last(4)
  end

  def contact
  end

  def about
  end
end
