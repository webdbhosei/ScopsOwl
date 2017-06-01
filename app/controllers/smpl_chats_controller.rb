class SmplChatsController < ApplicationController
  before_action :set_smpl_chat, only: [:show, :edit, :update, :destroy]

  # GET /smpl_chats
  # GET /smpl_chats.json
  def index
    @smpl_chats = SmplChat.all
  end

  # GET /smpl_chats/1
  # GET /smpl_chats/1.json
  def show
  end

  # GET /smpl_chats/new
  def new
    @smpl_chat = SmplChat.new
  end

  # GET /smpl_chats/1/edit
  def edit
  end

  # POST /smpl_chats
  # POST /smpl_chats.json
  def create
    @smpl_chat = SmplChat.new(smpl_chat_params)

    respond_to do |format|
      if @smpl_chat.save
        format.html { redirect_to @smpl_chat, notice: 'Smpl chat was successfully created.' }
        format.json { render :show, status: :created, location: @smpl_chat }
      else
        format.html { render :new }
        format.json { render json: @smpl_chat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smpl_chats/1
  # PATCH/PUT /smpl_chats/1.json
  def update
    respond_to do |format|
      if @smpl_chat.update(smpl_chat_params)
        format.html { redirect_to @smpl_chat, notice: 'Smpl chat was successfully updated.' }
        format.json { render :show, status: :ok, location: @smpl_chat }
      else
        format.html { render :edit }
        format.json { render json: @smpl_chat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smpl_chats/1
  # DELETE /smpl_chats/1.json
  def destroy
    @smpl_chat.destroy
    respond_to do |format|
      format.html { redirect_to smpl_chats_url, notice: 'Smpl chat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smpl_chat
      @smpl_chat = SmplChat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smpl_chat_params
      params.require(:smpl_chat).permit(:user_id, :content)
    end
end
