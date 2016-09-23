class MainController < ApplicationController
  layout 'share', only: [:share]
  
  def index
    gon.push({
      :current_lang => I18n.locale
    })
  end
  
  def share
    
  end
end
