class MvideosController < ApplicationController
  layout "extmain"
  skip_before_action :set_locale
  before_action :set_mvideo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_mgmt!, except: [:show, :index]
  
  # GET /mvideos
  # GET /mvideos.json
  def index
    @mvideos = Mvideo.all
    @header_bg='bg-dark'
    respond_to do |format|
      format.html
      format.json { render json: @mvideos }
    end
  end

  # GET /mvideos/1
  # GET /mvideos/1.json
  def show
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
        format.html { redirect_to @mvideo, notice: 'Mvideo was successfully created.' }
        format.json { render :show, status: :created, location: @mvideo }
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
        format.json { render :show, status: :ok, location: @mvideo }
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
      params.require(:mvideo).permit(:title, :date, :path, :desc)
    end
end
