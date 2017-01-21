class MainController < ApplicationController
  layout "extmain", except: [:index]
  
  def index
    @mvideos = Mvideo.all
    @categories = Category.all
    @maudios = Maudio.where(featured: true).order(date: :desc).take(2)
    
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
  
  def audio
  end
  
  def videos
    @header_bg='bg-dark'
    @mvideos = Mvideo.order(date: :desc)
  end
  
  def youngadults
    @header_bg='bg-dark'
  end
  
  def children
    @header_bg='bg-dark'
  end
  
  def share
    
  end
  
  def about
    @header_bg='transparent'
  end
  
  def home
    gon.push({
      :current_lang => I18n.locale
    })
  end
  
  def rolcc_feed
    @header_bg='bg-dark'
    @rolcc_feed = RolccFeed.find(params[:id])
  end
  
  def pastors
  end
  
  def build
  end
  
  def mission
  end
  
  def ministries
  end
  
end
