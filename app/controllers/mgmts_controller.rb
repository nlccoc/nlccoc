class MgmtsController < ApplicationController
  before_action :authenticate_mgmt!
  layout 'mgmts'
  def index
    gon.push({
      :current_mgmt => current_mgmt,
      :user_role => "admin"
    })
  end
  
end
