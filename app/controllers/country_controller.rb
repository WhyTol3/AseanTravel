class CountryController < ApplicationController
  def index
  	@countries = Country.all
  end

  def show
  	@country = Country.find(params[:id])
  	@hot = Place.where(country_id: params[:id]).last(4)
  end
end
