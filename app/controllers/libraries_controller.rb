class LibrariesController < ApplicationController
  layout false
  skip_before_action :set_locale
  before_action :set_library, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_mgmt!, except: [:show, :index]
  
  # GET /libraries
  # GET /libraries.json
  def index
    @libraries = Library.paginate(:page => params[:page] || 1).order('created_at DESC')
    
    respond_to do |format|
      format.html { redirect_to @libraries }
      format.json { render :json => { :libraries => @libraries.as_json(:includes => { :attachment => { :only => [:url]}}), serializer: LibrarySerializer, :total_pages => @libraries.total_pages, :current_page => params[:page]||1 }}
    end
  end
  
  # GET /libraries/new
  def new
    @library = Library.new
  end
  
  
  # POST /libraries
  # POST /libraries.json
  def create
    @library = Library.new(library_params)

    respond_to do |format|
      if @library.save!
        format.html { redirect_to @library, notice: 'Library was successfully created.' }
        format.json { render :json => {status: "OK"}}
      else
        format.html { render :new }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /libraries/1
  # PATCH/PUT /libraries/1.json
  def update
    respond_to do |format|
      if @library.update(library_params)
        format.html { redirect_to @library, notice: 'Library was successfully updated.' }
        format.json { render :show, status: :ok, location: @library }
      else
        format.html { render :edit }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /libraries/1
  # DELETE /libraries/1.json
  def destroy
    
    @library.destroy
    respond_to do |format|
      format.html { redirect_to events_path, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library
      @library = Library.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def library_params
      params.require(:library).permit(:name, :attachment)
    end
end