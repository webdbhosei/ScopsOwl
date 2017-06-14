class Rh21StatusesController < ApplicationController
  before_action :set_rh21_status, only: [:show, :edit, :update, :destroy]

  # GET /rh21_statuses
  # GET /rh21_statuses.json
  def index
    @rh21_statuses = Rh21Status.all
  end

  # GET /rh21_statuses/1
  # GET /rh21_statuses/1.json
  def show
  end

  # GET /rh21_statuses/new
  def new
    @rh21_status = Rh21Status.new
  end

  # GET /rh21_statuses/1/edit
  def edit
  end

  # POST /rh21_statuses
  # POST /rh21_statuses.json
  def create
    @rh21_status = Rh21Status.new(rh21_status_params)

    respond_to do |format|
      if @rh21_status.save
        format.html { redirect_to @rh21_status, notice: 'Rh21 status was successfully created.' }
        format.json { render :show, status: :created, location: @rh21_status }
      else
        format.html { render :new }
        format.json { render json: @rh21_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rh21_statuses/1
  # PATCH/PUT /rh21_statuses/1.json
  def update
    respond_to do |format|
      if @rh21_status.update(rh21_status_params)
        format.html { redirect_to @rh21_status, notice: 'Rh21 status was successfully updated.' }
        format.json { render :show, status: :ok, location: @rh21_status }
      else
        format.html { render :edit }
        format.json { render json: @rh21_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rh21_statuses/1
  # DELETE /rh21_statuses/1.json
  def destroy
    @rh21_status.destroy
    respond_to do |format|
      format.html { redirect_to rh21_statuses_url, notice: 'Rh21 status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rh21_status
      @rh21_status = Rh21Status.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rh21_status_params
      params.require(:rh21_status).permit(:status)
    end
end
