class EbaAnswersController < ApplicationController
  before_action :set_eba_answer, only: [:show, :edit, :update, :destroy]

  # GET /eba_answers
  # GET /eba_answers.json
  def index
    @eba_answers = EbaAnswer.all
  end

  # GET /eba_answers/1
  # GET /eba_answers/1.json
  def show
  end

  # GET /eba_answers/new
  def new
    @eba_answer = EbaAnswer.new
  end

  # GET /eba_answers/1/edit
  def edit
  end

  # POST /eba_answers
  # POST /eba_answers.json
  def create
    @eba_answer = EbaAnswer.new(eba_answer_params)

    respond_to do |format|
      if @eba_answer.save
        format.html { redirect_to @eba_answer, notice: 'Eba answer was successfully created.' }
        format.json { render :show, status: :created, location: @eba_answer }
      else
        format.html { render :new }
        format.json { render json: @eba_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eba_answers/1
  # PATCH/PUT /eba_answers/1.json
  def update
    respond_to do |format|
      if @eba_answer.update(eba_answer_params)
        format.html { redirect_to @eba_answer, notice: 'Eba answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @eba_answer }
      else
        format.html { render :edit }
        format.json { render json: @eba_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eba_answers/1
  # DELETE /eba_answers/1.json
  def destroy
    @eba_answer.destroy
    respond_to do |format|
      format.html { redirect_to eba_answers_url, notice: 'Eba answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eba_answer
      @eba_answer = EbaAnswer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eba_answer_params
      params.require(:eba_answer).permit(:eba_question_id, :user_id, :answer, :uploaded_time)
    end
end
