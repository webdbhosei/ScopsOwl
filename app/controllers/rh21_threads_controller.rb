class Rh21ThreadsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_rh21_thread, only: [:show, :edit, :update, :destroy]

  # GET /rh21_threads
  # GET /rh21_threads.json
  # def index
  #   @rh21_threads = Rh21Thread.all
  # end
  def index
    if current_user.handle.blank?
      url = root_url(only_path: false)
      SignupMailer.signup_email(current_user, url).deliver_now
      session[:set_handle_from_chat] = true
      redirect_to edit_user_path(current_user)
    end
    session[:user] = current_user

    @rh21_threads = Rh21Thread.all
    @rh21_posts = Rh21Post.where(rh21_thread_id: Rh21Thread.ids).all
  end

  # GET /rh21_threads/1
  # GET /rh21_threads/1.json
  def show
  end

  # GET /rh21_threads/new
  def new
    @rh21_thread = Rh21Thread.new
  end

  # GET /rh21_threads/1/edit
  def edit
  end

  # POST /rh21_threads
  # POST /rh21_threads.json
  def create
    @thread = params[:rh21_thread]
    # puts @param
    rh21_thread_params = {
      :title => params[:rh21_thread][:title],
      :subject => @thread[:subject],
      :content => @thread[:content],
      :language_id => @thread[:language_id],
      :user_id => current_user.id,
      :timestamp => Time.now.getutc
    }
    @rh21_thread = Rh21Thread.new(rh21_thread_params)

    respond_to do |format|
      if @rh21_thread.save
        format.html { redirect_to @rh21_thread, notice: 'Thread was successfully created.' }
        format.json { render :show, status: :created, location: @rh21_thread }
      else
        format.html { render :new }
        format.json { render json: @rh21_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rh21_threads/1
  # PATCH/PUT /rh21_threads/1.json
  def update
    respond_to do |format|
      if @rh21_thread.update(rh21_thread_params)
        format.html { redirect_to @rh21_thread, notice: 'Rh21 thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @rh21_thread }
      else
        format.html { render :edit }
        format.json { render json: @rh21_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rh21_threads/1
  # DELETE /rh21_threads/1.json
  def destroy
    @rh21_thread.destroy
    respond_to do |format|
      format.html { redirect_to rh21_threads_url, notice: 'Rh21 thread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rh21_thread
      @rh21_thread = Rh21Thread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rh21_thread_params
      params.require(:rh21_thread).permit(:title, :subject, :timestamp, :content, :quality)
    end
end
