class MgmtsController < ApplicationController
  before_action :authenticate_mgmt!
  layout 'mgmts'
  
  def index
    env = 'development'
    if Rails.env.production?
      env = 'production'
    end
    gon.push({
      :current_mgmt => current_mgmt,
      :loggedin_email => current_mgmt[:email],
      :is_admin => current_mgmt.is_admin?,
      :is_unapproved => current_mgmt.is_unapproved?,
      :env => env
    })
  end
  
  def inactive
  end
  
  def users
    id = params[:id]
    @user = Mgmt.find(id)
    
    respond_to do |format|
      format.json {render json: @user.as_json(:include => [:role])}
    end
  end
  
  def unapprovedusers
    
    @unapprovedusers = Mgmt.joins(:role).where(:roles => {:name => 'unapproved'})
    respond_to do |format|
      format.html { redirect_to @unapprovedusers }
      format.json { render :json => @unapprovedusers, :include => :role}
    end
  end
  
  def approveuser 
    @params = params.require(:user).permit(:id)

    @user = Mgmt.find(@params[:id])
    
    role = Role.find_by(name: 'office')
    @user.role = role
    @user.save
    respond_to do |format|
      format.json { render :json => @user, :include => :role}
    end
  end
  
end
