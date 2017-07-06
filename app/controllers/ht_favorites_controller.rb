class HtFavoritesController < ApplicationController
  before_action :set_ht_favorite, only: [:show, :edit, :update, :destroy]

  # GET /ht_favorites
  # GET /ht_favorites.json
  def index
    @ht_favorites = HtFavorite.all
  end

  # GET /ht_favorites/1
  # GET /ht_favorites/1.json
  def show
  end

  # GET /ht_favorites/new
  def new
    @ht_favorite = HtFavorite.new
  end

  # GET /ht_favorites/1/edit
  def edit
  end

  # POST /ht_favorites/
  # POST /ht_favorites/.json
  def create
    ht_favorite_params ={
      :user_id => current_user.id,
      :route_id =>params[:id]
    }
    @ht_favorite = HtFavorite.new(ht_favorite_params)

    respond_to do |format|
      if @ht_favorite.save
        format.html { redirect_to @ht_favorite, notice: 'Ht favorite was successfully created.' }
        format.json { render :show, status: :created, location: @ht_favorite }
      else
        format.html { render :new }
        format.json { render json: @ht_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ht_favorites/1
  # PATCH/PUT /ht_favorites/1.json
  def update
    respond_to do |format|
      if @ht_favorite.update(ht_favorite_params)
        format.html { redirect_to @ht_favorite, notice: 'Ht favorite was successfully updated.' }
        format.json { render :show, status: :ok, location: @ht_favorite }
      else
        format.html { render :edit }
        format.json { render json: @ht_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ht_favorites/1
  # DELETE /ht_favorites/1.json
  def destroy
    @ht_favorite.destroy
    respond_to do |format|
      format.html { redirect_to ht_favorites_url, notice: 'Ht favorite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ht_favorite
      @ht_favorite = HtFavorite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ht_favorite_params
      params.require(:ht_favorite).permit(:user_id, :route_id)
    end
end
