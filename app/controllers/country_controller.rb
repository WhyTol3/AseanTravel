class CountryController < ApplicationController
  def index
  end

  def show
  	@country = Country.find(params[:id])
  	@hot = Place.where(country_id: params[:id]).last(4)
  end
end
