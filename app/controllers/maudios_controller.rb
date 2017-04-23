class MaudiosController < ApplicationController
  layout "extmain"
  skip_before_action :set_locale
  before_action :set_maudio, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_mgmt!, except: [:show, :index]
  
  # GET /Maudios
  # GET /Maudios.json
  def index
    @Maudios = Maudio.all
    @header_bg='bg-dark'
    respond_to do |format|
      format.html
      format.json { render json: @Maudios }
    end
  end

  # GET /Maudios/1
  # GET /Maudios/1.json
  def show
    respond_to do |format|
      format.html
      format.json { render json: @maudio}
    end
  end

  # GET /Maudios/new
  def new
    @maudio = Maudio.new
  end

  # GET /Maudios/1/edit
  def edit
  end

  # POST /Maudios
  # POST /Maudios.json
  def create
    @maudio = Maudio.new(maudio_params)
    #extract_metadata
    

    respond_to do |format|
      if @maudio.save
        format.html { redirect_to @maudio, notice: 'maudio was successfully created.' }
        format.json { render json: @maudio, status: :created, notice: 'maudio was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @maudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Maudios/1
  # PATCH/PUT /Maudios/1.json
  def update
    respond_to do |format|
      if @maudio.update(maudio_params)
        format.html { redirect_to @maudio, notice: 'Maudio was successfully updated.' }
        format.json { render json: @maudio, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @maudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Maudios/1
  # DELETE /Maudios/1.json
  def destroy
    @maudio.destroy
    respond_to do |format|
      format.html { redirect_to Maudios_url, notice: 'Maudio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maudio
      @maudio = Maudio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maudio_params
      params.require(:maudio).permit(:title, :date, :path, :desc, :featured, :speaker)
    end
    
    def audio?
      logger.debug('*********************')
        
      logger.debug(File.extname(maudio_params[:path]))
      logger.debug('*********************')
      maudio_params[:path] =~ %r{.\.mp3}
    end
    
    # Retrieves metadata for MP3s
    def extract_metadata
      return unless audio?
      logger.debug(maudio_params[:path])
      logger.debug('It\'s audio')
      path = maudio_params[:path]
      #url = URI.parse(path) # turn the string into a URI
      #http = Net::HTTP.new(url.host, url.port) 
      #req = Net::HTTP::Get.new(url.path) # init a request with the url
      #req.range = (0..4096) # limit the load to only 4096 bytes
      #res = http.request(req) # load the mp3 file
      #child = {} # prepare an empty array to store the metadata we grab
      #open_opts = { :encoding => 'utf-8' }
      #Mp3Info.open( StringIO.open(res.body) ) do |m|  #do the parsing
      #  child['title'] = m.tag.title 
      #  child['album'] = m.tag.album 
      #  child['artist'] = m.tag.artist
      #  child['length'] = m.length
      #  
      #  puts m
      #end
      #logger.debug('*********************')
        
      #logger.debug(child['length'])
      #logger.debug('*********************')
    end
end
