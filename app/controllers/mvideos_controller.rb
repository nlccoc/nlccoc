class MvideosController < ApplicationController
  layout "extmain"
  skip_before_action :set_locale
  before_action :set_mvideo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_mgmt!, except: [:show, :index]
  
  # GET /mvideos
  # GET /mvideos.json
  def index
    @mvideos = Mvideo.paginate(:page => params[:page] || 1).order(date: :desc)
    @header_bg='bg-dark'
    respond_to do |format|
      format.html
      format.json { render json: { :mvideo => @mvideos.as_json(:include => :location), :total_pages => @mvideos.total_pages, :current_page => params[:page]||1 }}
    end
  end

  # GET /mvideos/1
  # GET /mvideos/1.json
  def show
    
    respond_to do |format|
      format.html
      format.json { render json: @mvideo.as_json(:include => :location) }
    end
  end

  # GET /mvideos/new
  def new
    @mvideo = Mvideo.new
  end

  # GET /mvideos/1/edit
  def edit
  end

  # POST /mvideos
  # POST /mvideos.json
  def create
    @mvideo = Mvideo.new(mvideo_params)
  
    respond_to do |format|
      if @mvideo.save
        Log.info("[<span class='logged-email'>#{current_mgmt.email}</span>] created a video: [<span class='log-video-name'>#{@mvideo.title}<span>]")
        format.html { redirect_to @mvideo, notice: 'mvideo was successfully created.' }
        format.json { render json: @mvideo, status: :created, notice: 'mvideo was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @mvideo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mvideos/1
  # PATCH/PUT /mvideos/1.json
  def update
    respond_to do |format|
      if @mvideo.update(mvideo_params)
        format.html { redirect_to @mvideo, notice: 'Mvideo was successfully updated.' }
        format.json { render json: @mvideo, status: :created, notice: 'mvideo was successfully created.' }
      else
        format.html { render :edit }
        format.json { render json: @mvideo.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # DELETE /mvideos/1
  # DELETE /mvideos/1.json
  def destroy
    @mvideo.destroy
    respond_to do |format|
      format.html { redirect_to mvideos_url, notice: 'Mvideo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mvideo
      @mvideo = Mvideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mvideo_params
      params.require(:mvideo).permit(:title, :date, :path, :desc, :youtubeID, :location_id)
    end
end
