class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
    
    @message = { :status => 'ok', :message => 'Message has been sent out successfully.'}
    
    respond_to do |format|
      format.html { redirect_to events_path, notice: 'Message has been sent out successfully.' }
      format.json { render json: @message, status: :ok}
    end
  end
end