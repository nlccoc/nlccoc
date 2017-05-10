class MgmtsController < ApplicationController
  before_action :authenticate_mgmt!
  layout 'mgmts'
  
  def index
  end
  
  def inactive
  end
  
  def unapprovedusers
    
    @unapprovedusers = Mgmt.joins(:role).where(:roles => {:name => 'unapproved'})
    respond_to do |format|
      format.html { redirect_to @unapprovedusers }
      format.json { render :json => @unapprovedusers, :include => :role}
    end
  end
  
end
