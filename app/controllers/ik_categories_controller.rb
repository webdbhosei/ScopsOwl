class IkCategoriesController < ApplicationController
  before_action :set_ik_category, only: [:show, :edit, :update, :destroy]

  # GET /ik_categories
  # GET /ik_categories.json
  def index
    @ik_categories = IkCategory.all
  end

  # GET /ik_categories/1
  # GET /ik_categories/1.json
  def show
  end

  # GET /ik_categories/new
  def new
    @ik_category = IkCategory.new
  end

  # GET /ik_categories/1/edit
  def edit
  end

  # POST /ik_categories
  # POST /ik_categories.json
  def create
    @ik_category = IkCategory.new(ik_category_params)

    respond_to do |format|
      if @ik_category.save
        format.html { redirect_to @ik_category, notice: 'Ik category was successfully created.' }
        format.json { render :show, status: :created, location: @ik_category }
      else
        format.html { render :new }
        format.json { render json: @ik_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ik_categories/1
  # PATCH/PUT /ik_categories/1.json
  def update
    respond_to do |format|
      if @ik_category.update(ik_category_params)
        format.html { redirect_to @ik_category, notice: 'Ik category was successfully updated.' }
        format.json { render :show, status: :ok, location: @ik_category }
      else
        format.html { render :edit }
        format.json { render json: @ik_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ik_categories/1
  # DELETE /ik_categories/1.json
  def destroy
    @ik_category.destroy
    respond_to do |format|
      format.html { redirect_to ik_categories_url, notice: 'Ik category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ik_category
      @ik_category = IkCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ik_category_params
      params.require(:ik_category).permit(:name)
    end
end
