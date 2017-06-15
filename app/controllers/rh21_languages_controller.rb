class Rh21LanguagesController < ApplicationController
  before_action :set_rh21_language, only: [:show, :edit, :update, :destroy]

  # GET /rh21_languages
  # GET /rh21_languages.json
  def index
    @rh21_languages = Rh21Language.all
  end

  # GET /rh21_languages/1
  # GET /rh21_languages/1.json
  def show
  end

  # GET /rh21_languages/new
  def new
    @rh21_language = Rh21Language.new
  end

  # GET /rh21_languages/1/edit
  def edit
  end

  # POST /rh21_languages
  # POST /rh21_languages.json
  def create
    @rh21_language = Rh21Language.new(rh21_language_params)

    respond_to do |format|
      if @rh21_language.save
        format.html { redirect_to @rh21_language, notice: 'Rh21 language was successfully created.' }
        format.json { render :show, status: :created, location: @rh21_language }
      else
        format.html { render :new }
        format.json { render json: @rh21_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rh21_languages/1
  # PATCH/PUT /rh21_languages/1.json
  def update
    respond_to do |format|
      if @rh21_language.update(rh21_language_params)
        format.html { redirect_to @rh21_language, notice: 'Rh21 language was successfully updated.' }
        format.json { render :show, status: :ok, location: @rh21_language }
      else
        format.html { render :edit }
        format.json { render json: @rh21_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rh21_languages/1
  # DELETE /rh21_languages/1.json
  def destroy
    @rh21_language.destroy
    respond_to do |format|
      format.html { redirect_to rh21_languages_url, notice: 'Rh21 language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rh21_language
      @rh21_language = Rh21Language.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rh21_language_params
      params.require(:rh21_language).permit(:language)
    end
end
