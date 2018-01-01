class NewslettersController < ApplicationController
  layout "extmain"
  skip_before_action :set_locale
  before_action :set_newsletter, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_mgmt!, except: [:show, :index]
  
  # GET /newsletters
  # GET /newsletters.json
  def index
    @newsletters = Newsletter.all
    
    @header_bg='bg-dark'
    respond_to do |format|
      format.html
      format.json { render json: { :newsletters=>@newsletters }}
    end
  end

  # GET /newsletter/1
  # GET /newsletters/1.json
  def show
    respond_to do |format|
      format.json { render json: @newsletter}
    end
  end

  # GET /newsletter/new
  def new
    @newsletter = Newsletter.new
  end

  # GET /newsletter/1/edit
  def edit
  end

  # POST /newsletter
  # POST /newsletter.json
  def create
    @newsletter = Newsletter.new(newsletter_params)
    respond_to do |format|
      if @newsletter.save
        format.json { render json: @newsletter, status: :created, notice: 'maudio was successfully created.' }
      else
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Maudios/1
  # PATCH/PUT /Maudios/1.json
  def update
    respond_to do |format|
      if @newsletter.update(maudio_params)
        format.json { render json: @newsletter, status: :ok }
      else
        format.json { render json: @newsletter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Maudios/1
  # DELETE /Maudios/1.json
  def destroy
    @newsletter.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsletter
      @newsletter = Newsletter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newsletter_params
      params.require(:maudio).permit(:title, :date, :path, :location_id)
    end
    
end
