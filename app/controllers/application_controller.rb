class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale, :get_feed
  around_action :set_time_zone
  
  def current_translations
    @translations ||= I18n.backend.send(:translations)
    @translations[I18n.locale].with_indifferent_access
  end
  
  def not_found
    raise ActionController::RoutingError.new('Not Found')
  end
  
  private
  
    def set_time_zone
      #logger.debug "set_time_zone"
      old_time_zone = Time.zone
      Time.zone = browser_timezone if browser_timezone.present?
      Time.zone = 'Pacific Time (US & Canada)' if Time.zone == 'UTC'
      #logger.debug Time.zone
      yield
    ensure
      Time.zone = old_time_zone
    end
                                                                                     
    def browser_timezone
      cookies["browser.timezone"]
    end
    # Before every request, we set the locale, from the specified or detected settings, or from the cookie
    def set_locale
      if language_change_necessary?
        I18n.locale = the_new_locale
        set_locale_cookie(I18n.locale)
      else
        use_locale_from_cookie
      end
    end
  
    # A locale change is necessary if no locale cookie is found, or if the locale param has been specified
    def language_change_necessary?
      return cookies['locale'].nil? || params[:locale]
    end
  
    # The new locale is taken from the current_user language setting, it logged_in, or from the http accept language header if not
    # In both cases, if a locale param has been passed, it takes precedence. Only available locales are accepted
    def the_new_locale
      new_locale = (params[:locale] || I18n.default_locale)
      #new_locale = (params[:locale] || extract_locale_from_accept_language_header)
      ['en', 'zh', 'cn'].include?(new_locale) ? new_locale : I18n.default_locale.to_s
    end
  
    # Sets the locale cookie
    def set_locale_cookie(locale)
      cookies['locale'] = locale.to_s
    end
  
    # Reads the locale cookie and sets the locale from it
    def use_locale_from_cookie
      I18n.locale = cookies['locale']
    end
  
    # Extracts the locale from the accept language header, if found
    def extract_locale_from_accept_language_header
      locale = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first rescue I18n.default_locale
    end
    
    def get_feed
      @rolcc_feed = RolccFeed.order(:date).last
    end
end
