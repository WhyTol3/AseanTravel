class PlaceController < ApplicationController
  def index
  end

  def show
  	@place = Place.find(params[:id])
  	@images = PlaceImage.where(place_id: params[:id])
  	@souvenir = Souvenir.where(place_id: params[:id])
  end
end
