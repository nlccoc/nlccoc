class EventsController < ApplicationController
  layout "extmain"
  before_action :authenticate_mgmt!, except: [:show, :index]
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  
  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    @header_bg='bg-dark'
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    @event.datetime=DateTime.new(Time.now.year, Time.now.month, Time.now.day, 9, 0)
    @event.event_period = 50
    @event.categories << Category.find_by_id(1)
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    #pry 
    @event = Event.new
    event = params[:event]
    @event.title = event[:title]
    @event.short_desc = event[:short_desc]
    @event.desc = event[:desc]
    @event.datetime = DateTime.new(event['datetime(1i)'].to_i, event['datetime(2i)'].to_i, event['datetime(3i)'].to_i, event['datetime(4i)'].to_i, event['datetime(5i)'].to_i)
    @event.event_period = event[:event_period]
    @event.location = event[:location]
    
    event[:category_ids].each do |c_id|
      category = Category.find_by_id(c_id.to_i)
      @event.categories << category unless category.nil? 
    end
    
    if params[:repeat] == 'true'
      @repeat_meta = RepeatMetum.new
      @repeat_meta.repeat_start = @event.datetime
      @repeat_meta.repeat_interval = 604800 # repeat every week
      valid_until = params[:valid_until]
      
      @repeat_meta.valid_until = DateTime.new(valid_until['date(1i)'].to_i, valid_until['date(2i)'].to_i, valid_until['date(3i)'].to_i)
      @event.repeat_metum << @repeat_meta
    end
    
    
    respond_to do |format|
      
      if @event.save
        
        format.html { redirect_to events_path, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event = Event.find(params[:id])
    event = params[:event]
    @event.title = event[:title]
    @event.short_desc = event[:short_desc]
    @event.desc = event[:desc]
    @event.datetime = DateTime.new(event['datetime(1i)'].to_i, event['datetime(2i)'].to_i, event['datetime(3i)'].to_i, event['datetime(4i)'].to_i, event['datetime(5i)'].to_i)
    @event.event_period = event[:event_period]
    @event.location = event[:location]
    
    @event.categories = []
    event[:category_ids].each do |c_id|
      category = Category.find_by_id(c_id.to_i)
      @event.categories << category unless category.nil? 
    end
    
    if params[:repeat] == 'true'
      @repeat_meta = RepeatMetum.new
      @repeat_meta.repeat_start = @event.datetime
      @repeat_meta.repeat_interval = 604800 # repeat every week
      valid_until = params[:valid_until]
      
      @repeat_meta.valid_until = DateTime.new(valid_until['date(1i)'].to_i, valid_until['date(2i)'].to_i, valid_until['date(3i)'].to_i)
      @event.repeat_metum = []
      @event.repeat_metum << @repeat_meta
    end
    respond_to do |format|
      if @event.update(@event.as_json)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    
    @event=Event.find(params[:id])
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_path, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :short_desc, :desc, :datetime, :event_period, :category, :repeat, :valid_until)
    end
end
