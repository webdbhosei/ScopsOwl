class GrFileserverContentsController < ApplicationController
  before_action :set_gr_fileserver_content, only: [:show, :edit, :update, :destroy]

  # GET /gr_fileserver_contents
  # GET /gr_fileserver_contents.json
  def index
    @gr_fileserver_contents = GrFileserverContent.all
  end

  # GET /gr_fileserver_contents/1
  # GET /gr_fileserver_contents/1.json
  def show
  end

  # GET /gr_fileserver_contents/new
  def new
    @gr_fileserver_content = GrFileserverContent.new
  end

  # GET /gr_fileserver_contents/1/edit
  def edit
  end

  # POST /gr_fileserver_contents
  # POST /gr_fileserver_contents.json
  def create
    @file = params[:gr_fileserver_content][:file_content]
    @gr_fileserver_content = GrFileserverContent.new(
        :file_content => @file.read,
        :file_name => @file.original_filename,
        :file_type => @file.content_type,
        :file_size => @file.size,
        :file_permission => params[:gr_fileserver_content][:file_permission]
    )

    respond_to do |format|
      if @gr_fileserver_content.save
        format.html { redirect_to @gr_fileserver_content, notice: 'Gr fileserver content was successfully created.' }
        format.json { render :show, status: :created, location: @gr_fileserver_content }
      else
        format.html { render :new }
        format.json { render json: @gr_fileserver_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gr_fileserver_contents/1
  # PATCH/PUT /gr_fileserver_contents/1.json
  def update
    @file = params[:gr_fileserver_content][:file_content]
    gr_fileserver_content_param = {
        :file_content => @file.read,
        :file_name => @file.original_filename,
        :file_type => @file.content_type,
        :file_size => @file.size,
        :file_permission => [:gr_fileserver_content][:file_permission]
    }

    respond_to do |format|
      if @gr_fileserver_content.update(gr_fileserver_content_params)
        format.html { redirect_to @gr_fileserver_content, notice: 'Gr fileserver content was successfully updated.' }
        format.json { render :show, status: :ok, location: @gr_fileserver_content }
      else
        format.html { render :edit }
        format.json { render json: @gr_fileserver_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gr_fileserver_contents/1
  # DELETE /gr_fileserver_contents/1.json
  def destroy
    @gr_fileserver_content.destroy
    respond_to do |format|
      format.html { redirect_to gr_fileserver_contents_url, notice: 'Gr fileserver content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def download
      @file = GrFileserverContent.find(params[:id])
      send_data @file.file_content, :filename => @file.file_name, :type => @file.file_type
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gr_fileserver_content
      @gr_fileserver_content = GrFileserverContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gr_fileserver_content_params
      params.require(:gr_fileserver_content).permit(:file_content, :file_name, :file_type, :file_size, :file_permission)
    end
end
