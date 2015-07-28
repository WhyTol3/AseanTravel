class PlaceController < ApplicationController
  def index
  	if params[:c]
  		@places = Place.where(country_id: params[:c]).reverse_order.page(params[:page]).per(5)
  		@country = Country.find(params[:c]).name
  	else
  		@places = Place.all.reverse_order.page(params[:page]).per(5)
  		@country = "All Place"
  	end
  end

  def show
  	@place = Place.find(params[:id])
  	@images = PlaceImage.where(place_id: params[:id])
  	@souvenir = Souvenir.where(place_id: params[:id]).reverse_order
    @resturant = Restaurant.where(place_id: params[:id]).reverse_order
    @hotel = Hotel.where(place_id: params[:id]).reverse_order
  end
end
