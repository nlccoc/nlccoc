class MgmtsController < ApplicationController
  before_action :authenticate_mgmt!
  layout 'mgmts'
  def index
  end
  
end
