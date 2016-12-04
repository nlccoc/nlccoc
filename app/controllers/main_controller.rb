class MainController < ApplicationController
  layout "extmain", except: [:index]
  
  def index
    @mvideos = Mvideo.all
    gon.push({
      :current_lang => I18n.locale
    })
  end
  
  def tithe
    @header_bg='transparent'
  end
  
  def cellgroups
    @header_bg='bg-dark'
  end
  
  def videos
    @header_bg='bg-dark'
  end
  
  def share
    
  end
  
  def home
    gon.push({
      :current_lang => I18n.locale
    })
  end
end
