class LogsController < ApplicationController
  before_action :authenticate_mgmt!
  def index
    @exclude = 'read Rolcc Feed'
    @logs = Log.where.not('text LIKE ?', '%'+@exclude+'%').paginate(:page => params[:page] || 1).order('datetime DESC')
    #@logs = Log.where.not('text LIKE ?', '%successfully logged in%').paginate(:page => params[:page] || 1).order('datetime DESC')
    @exclude = 'read Rolcc Feed'
    
    
    
    respond_to do |format|
      format.html
      format.json { render json: {:logs => @logs.as_json(:include => [:logtype => {:only => [:name]}]), :total_pages => @logs.total_pages, :current_page => params[:page]||1 }}
    end
  end
  
  
end
