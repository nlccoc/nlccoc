class MgmtController < ApplicationController
  before_action :authenticate_mgmt!
  layout 'mgmt'
  def index
    gon.push({
      :current_mgmt => current_mgmt,
      :user_role => "admin"
    })
  end
  
  def video
    render "mgmt/media/video"
  end
  
  def audio
    render "mgmt/media/audio"
  end
end
