class MainController < ApplicationController
  layout "extmain", except: [:index]
  before_action :set_bg_dark, only: [:cellgroups, :videos, :youngadults, :children, :rolcc_feed, :rolcc_feeds, :cellgroups, :audio]
  
  def index
    @mvideos = Mvideo.order(date: :desc).limit(6)
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
  end
  
  def audio
    @maudios = Maudio.all
  end
  
  def videos
    @mvideos = Mvideo.order(date: :desc)
  end
  
  def youngadults
  end
  
  def children
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
  
  def rolcc_feeds
    @posts = RolccFeed.all.limit(10)
  end
  
  def letsencrypt
    render text: "XMfTdBBd8_dUO1Cr87JZNZKEq8kf7U6OKzLv4wvqZi8.yAL_mUM8LDrd9e6HSxf5-7cOHG_Om01A2aTL68ro4_U"
  end
  
  private 
    def set_bg_dark
      @header_bg='bg-dark'
    end
  
end
