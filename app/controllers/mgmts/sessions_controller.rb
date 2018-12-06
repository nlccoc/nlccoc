class Mgmts::SessionsController < Devise::SessionsController
  layout 'login'
  after_filter :log_failed_login, :only => :new
# before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
    
    Log.info("[<span class='logged-email'>#{resource.email}</span> (role: #{resource.role.name})] successfully logged in")
    respond_with resource, location: after_sign_in_path_for(resource)
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end
  
  private
    def log_failed_login
      Log.warn("[<span class='logged-email'>#{request.filtered_parameters['mgmt']['email']}</span>] logged in failed") if failed_login?
    end 
  
    def failed_login?
      (options = env["warden.options"]) && options[:action] == "unauthenticated"
    end 

  protected

  def after_sign_in_path_for(resource)
    mgmts_path
  end
  
  def after_sign_out_path_for(resource_or_scope)
    mgmts_path
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
