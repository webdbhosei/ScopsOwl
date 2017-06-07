class IkMemosController < ApplicationController
  before_action :set_ik_memo, only: [:show, :edit, :update, :destroy]

  # GET /ik_memos
  # GET /ik_memos.json
  def index
    @ik_memos = IkMemo.all
  end

  # GET /ik_memos/1
  # GET /ik_memos/1.json
  def show
  end

  # GET /ik_memos/new
  def new
    @ik_memo = IkMemo.new
  end

  # GET /ik_memos/1/edit
  def edit
  end

  # POST /ik_memos
  # POST /ik_memos.json
  def create
    @ik_memo = IkMemo.new(ik_memo_params)

    respond_to do |format|
      if @ik_memo.save
        format.html { redirect_to @ik_memo, notice: 'Ik memo was successfully created.' }
        format.json { render :show, status: :created, location: @ik_memo }
      else
        format.html { render :new }
        format.json { render json: @ik_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ik_memos/1
  # PATCH/PUT /ik_memos/1.json
  def update
    respond_to do |format|
      if @ik_memo.update(ik_memo_params)
        format.html { redirect_to @ik_memo, notice: 'Ik memo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ik_memo }
      else
        format.html { render :edit }
        format.json { render json: @ik_memo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ik_memos/1
  # DELETE /ik_memos/1.json
  def destroy
    @ik_memo.destroy
    respond_to do |format|
      format.html { redirect_to ik_memos_url, notice: 'Ik memo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ik_memo
      @ik_memo = IkMemo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ik_memo_params
      params.require(:ik_memo).permit(:content, :ik_category_id)
    end
end
