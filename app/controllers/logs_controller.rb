class LogsController < ApplicationController
  before_action :authenticate_mgmt!
  def index
    @logs = Log.all.order('datetime DESC').limit(200)
    
    respond_to do |format|
      format.html
      format.json { render json: @logs.as_json(:include => [:logtype => {:only => [:name]}]) }
    end
  end
end
