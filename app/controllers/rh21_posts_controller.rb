class Rh21PostsController < ApplicationController
  before_action :set_rh21_post, only: [:show, :edit, :update, :destroy]

  # GET /rh21_posts
  # GET /rh21_posts.json
  def index
    if current_user.handle.blank?
      url = root_url(only_path: false)
      SignupMailer.signup_email(current_user, url).deliver_now
      session[:set_handle_from_chat] = true
      redirect_to edit_user_path(current_user)
    end
    session[:user] = current_user

    @rh21_posts = Rh21Post.where(user_id: current_user.id).all
  end

  # GET /rh21_posts/1
  # GET /rh21_posts/1.json
  def show
  end

  # GET /rh21_posts/new
  def new
    @rh21_post = Rh21Post.new
  end

  # GET /rh21_posts/1/edit
  def edit
  end

  # POST /rh21_posts
  # POST /rh21_posts.json
  def create
    @post = params[:rh21_post]
    # if request.post?

    # puts @param
    rh21_post_params = {
      :user_id => current_user.id,
      :rh21_thread_id => params[:post][:thread_id],
      :rh21_language_id => params[:post][:language_id],
      :title => params[:rh21_post][:title],
      :content => @post[:content],
      :timestamp => Time.now.getutc
    }
    @rh21_post = Rh21Post.new(rh21_post_params)

    # respond_to do |format|
    if @rh21_post.save
      # format.html { redirect_to @rh21_post, notice: 'Rh21 post was successfully created.' }
      # format.json { render :show, status: :created, location: @rh21_post }
      flash[:notice] = "Successfully created post."
      redirect_to "/rh21_threads/#{@rh21_post.rh21_thread_id}"
    else
      format.html { render :new }
      format.json { render json: @rh21_post.errors, status: :unprocessable_entity }
    end
    # end
  end

  # PATCH/PUT /rh21_posts/1
  # PATCH/PUT /rh21_posts/1.json
  def update
    respond_to do |format|
      if @rh21_post.update(rh21_post_params)
        format.html { redirect_to @rh21_post, notice: 'Rh21 post was successfully updated.' }
        format.json { render :show, status: :ok, location: @rh21_post }
      else
        format.html { render :edit }
        format.json { render json: @rh21_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rh21_posts/1
  # DELETE /rh21_posts/1.json
  def destroy
    @rh21_post.destroy
    respond_to do |format|
      format.html { redirect_to rh21_posts_url, notice: 'Rh21 post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rh21_post
      @rh21_post = Rh21Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rh21_post_params
      params.require(:rh21_post).permit(:timestamp, :title, :content, :likes, :dislikes)
    end
end
