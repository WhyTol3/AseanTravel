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

    @comment = CommentPlace.new
    @comments = CommentPlace.where(place_id: params[:id])

    @hol = Hotel.new
    @res = Restaurant.new
    @sou = Souvenir.new
  end

  def nsp
    @cid = params[:cid]
    @data = Souvenir.new
  end

  def nrp
    @cid = params[:cid]
    @data = Restaurant.new
  end

  def nhp
    @cid = params[:cid]
    @data = Hotel.new
  end

  def csp
    @sou = Souvenir.new(sou_param)
    if @sou.save
      redirect_to place_path(params[:souvenir][:place_id])
    end
  end

  def crp
    @res = Restaurant.new(res_param)
    if @res.save
      redirect_to place_path(params[:restaurant][:place_id])
    end
  end

  def chp
    @hol = Hotel.new(ho_param)
    if @hol.save
      redirect_to place_path(params[:hotel][:place_id])
    end
  end

  private

  def sou_param
    params.require(:souvenir).permit(:name, :place_id, :image, :description)
  end

  def res_param
    params.require(:restaurant).permit(:name, :place_id, :image, :description)
  end

  def ho_param
    params.require(:hotel).permit(:name, :place_id, :image, :description)
  end

end
