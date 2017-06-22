class HtRoutesController < ApplicationController
  before_action :set_ht_route, only: [:show, :edit, :update, :destroy]

  # GET /ht_routes
  # GET /ht_routes.json
  def index
    @ht_routes = HtRoute.all
  end

  # GET /ht_routes/1
  # GET /ht_routes/1.json
  def show
  end

  # GET /ht_routes/new
  def new
    @ht_route = HtRoute.new
  end

  # GET /ht_routes/1/edit
  def edit
  end

  # POST /ht_routes
  # POST /ht_routes.json
  def create
    @ht_route = HtRoute.new(ht_route_params)

    respond_to do |format|
      if @ht_route.save
        format.html { redirect_to @ht_route, notice: 'Ht route was successfully created.' }
        format.json { render :show, status: :created, location: @ht_route }
      else
        format.html { render :new }
        format.json { render json: @ht_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ht_routes/1
  # PATCH/PUT /ht_routes/1.json
  def update
    respond_to do |format|
      if @ht_route.update(ht_route_params)
        format.html { redirect_to @ht_route, notice: 'Ht route was successfully updated.' }
        format.json { render :show, status: :ok, location: @ht_route }
      else
        format.html { render :edit }
        format.json { render json: @ht_route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ht_routes/1
  # DELETE /ht_routes/1.json
  def destroy
    @ht_route.destroy
    respond_to do |format|
      format.html { redirect_to ht_routes_url, notice: 'Ht route was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ht_route
      @ht_route = HtRoute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ht_route_params
      params.require(:ht_route).permit(:name, :route_detail, :chat_id)
    end
end
