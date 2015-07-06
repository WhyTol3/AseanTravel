class AseanController < ApplicationController
  def index
  	@countries = Country.all
  end

  def contact
  end

  def about
  end
end
