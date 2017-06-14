class Rh21RolesController < ApplicationController
  before_action :set_rh21_role, only: [:show, :edit, :update, :destroy]

  # GET /rh21_roles
  # GET /rh21_roles.json
  def index
    @rh21_roles = Rh21Role.all
  end

  # GET /rh21_roles/1
  # GET /rh21_roles/1.json
  def show
  end

  # GET /rh21_roles/new
  def new
    @rh21_role = Rh21Role.new
  end

  # GET /rh21_roles/1/edit
  def edit
  end

  # POST /rh21_roles
  # POST /rh21_roles.json
  def create
    @rh21_role = Rh21Role.new(rh21_role_params)

    respond_to do |format|
      if @rh21_role.save
        format.html { redirect_to @rh21_role, notice: 'Rh21 role was successfully created.' }
        format.json { render :show, status: :created, location: @rh21_role }
      else
        format.html { render :new }
        format.json { render json: @rh21_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rh21_roles/1
  # PATCH/PUT /rh21_roles/1.json
  def update
    respond_to do |format|
      if @rh21_role.update(rh21_role_params)
        format.html { redirect_to @rh21_role, notice: 'Rh21 role was successfully updated.' }
        format.json { render :show, status: :ok, location: @rh21_role }
      else
        format.html { render :edit }
        format.json { render json: @rh21_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rh21_roles/1
  # DELETE /rh21_roles/1.json
  def destroy
    @rh21_role.destroy
    respond_to do |format|
      format.html { redirect_to rh21_roles_url, notice: 'Rh21 role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rh21_role
      @rh21_role = Rh21Role.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rh21_role_params
      params.require(:rh21_role).permit(:role)
    end
end
