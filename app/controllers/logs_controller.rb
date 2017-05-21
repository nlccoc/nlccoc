class LogsController < ApplicationController
  before_action :authenticate_mgmt!
  def index
    @logs = Log.paginate(:page => params[:page] || 1).order('datetime DESC')
    
    respond_to do |format|
      format.html
      format.json { render json: {:logs => @logs.as_json(:include => [:logtype => {:only => [:name]}]), :total_pages => @logs.total_pages, :current_page => params[:page]||1 }}
    end
  end
  
  
end
