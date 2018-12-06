class ErrorsController < ApplicationController
  layout "extmain"
  def not_found
    render(:status => 404)
  end

  def internal_server_error
    respond_to do |format|
      format.html { redirect_to events_path, notice: 'Message has been sent out successfully.' }
      format.json { render(:status => 500)}
    end
    
  end
end
