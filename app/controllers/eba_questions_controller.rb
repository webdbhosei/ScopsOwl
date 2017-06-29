class EbaQuestionsController < ApplicationController
  before_action :set_eba_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /eba_questions
  # GET /eba_questions.json
  def index
    @eba_questions = EbaQuestion.all
  end

  # GET /eba_questions/1
  # GET /eba_questions/1.json
  def show
  end

  # GET /eba_questions/new
  def new
    @eba_question = EbaQuestion.new
  end

  # GET /eba_questions/1/edit
  def edit
  end

  # POST /eba_questions
  # POST /eba_questions.json
  def create
    @eba_question = EbaQuestion.new(eba_question_params)
    @eba_question.user_id = current_user.id
    @eba_question.uploaded_time = Time.now

    respond_to do |format|
      if @eba_question.save
        format.html { redirect_to @eba_question, notice: 'Eba question was successfully created.' }
        format.json { render :show, status: :created, location: @eba_question }
      else
        format.html { render :new }
        format.json { render json: @eba_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eba_questions/1
  # PATCH/PUT /eba_questions/1.json
  def update
    respond_to do |format|
      if @eba_question.update(eba_question_params)
        format.html { redirect_to @eba_question, notice: 'Eba question was successfully updated.' }
        format.json { render :show, status: :ok, location: @eba_question }
      else
        format.html { render :edit }
        format.json { render json: @eba_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eba_questions/1
  # DELETE /eba_questions/1.json
  def destroy
    @eba_question.destroy
    respond_to do |format|
      format.html { redirect_to eba_questions_url, notice: 'Eba question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def list
    @eba_question = EbaQuestion.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eba_question
      @eba_question = EbaQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eba_question_params
      params.require(:eba_question).permit(:title, :user_id, :classname, :uploaded_time)
    end
end
