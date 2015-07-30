class CommentPlacesController < ApplicationController
  # before_action :set_comment_place, only: [:show, :edit, :update, :destroy]
  # before_create :add_user

  # GET /comment_places
  # GET /comment_places.json
  def index
    @comment_places = CommentPlace.all
  end

  # GET /comment_places/1
  # GET /comment_places/1.json
  def show
  end

  # GET /comment_places/new
  def new
    @comment_place = CommentPlace.new
  end

  # GET /comment_places/1/edit
  def edit
  end

  # POST /comment_places
  # POST /comment_places.json
  def create
    @comment_place = CommentPlace.new(comment_place_params)
    comment = params[:comment_place]

    if @comment_place.save
      redirect_to place_path(comment[:place_id])
    else
      render "new"
    end

    # respond_to do |format|
    #   if @comment_place.save
    #     format.html { redirect_to @comment_place, notice: 'Comment place was successfully created.' }
    #     format.json { render :show, status: :created, location: @comment_place }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @comment_place.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /comment_places/1
  # PATCH/PUT /comment_places/1.json
  def update
    respond_to do |format|
      if @comment_place.update(comment_place_params)
        format.html { redirect_to @comment_place, notice: 'Comment place was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_place }
      else
        format.html { render :edit }
        format.json { render json: @comment_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_places/1
  # DELETE /comment_places/1.json
  def destroy
    @comment_place.destroy
    respond_to do |format|
      format.html { redirect_to comment_places_url, notice: 'Comment place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_place
      @comment_place = CommentPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_place_params
      params.require(:comment_place).permit(:user_id, :caption, :place_id)
    end

    # def add_user
      # self.signed_up_on = Date.today
    # end

end
