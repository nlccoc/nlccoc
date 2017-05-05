class MainController < ApplicationController
  layout "extmain", except: [:index]
  before_action :set_bg_dark, only: [:cellgroups, :videos, :youngadults, :children, :rolcc_feed, :rolcc_feeds, :cellgroups, :audio]
  skip_before_filter :verify_authenticity_token, :only => [:audio]
  
  def index
    @mvideos = Mvideo.where('location_id = 1').order(date: :desc).limit(6)
    @categories = Category.all
    @maudios = Maudio.where(featured: true).order(date: :desc).take(2)
    @featured_events = Event.joins(:featured_info).sort_by(&:latest_date)
    
    #logger.debug(@featured_events.includes(:repeat_metum).inspect)
    #@featured_events = @featured_events.sort_by &:latest_date
    
    @contact = Contact.new
    @topic = '我想知道教會近期活動'
    
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
    @maudios = Maudio.all.order(date: :desc)
  end
  
  def videos
    @mvideos = Mvideo.order(date: :desc)
  end
  
  def youngadults
    redirect_to comingsoon_path
  end
  
  def children
    redirect_to comingsoon_path
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
    redirect_to comingsoon_path
  end
  
  def comingsoon
  end
  
  def contact
    @contact = Contact.new
    @topic = params[:topic]
    
    if !@topic.nil?
    else
      @topic = '我想知道教會近期活動'
    end
    
  end
  
  def rolcc_feeds
    @posts = RolccFeed.paginate(page: params[:page], per_page: 5).order(date: :desc)
    @category_dates = RolccFeedCategoryDate.all.limit(20)
    @category_books =RolccFeedCategoryBook.all
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def sundaysermon
    #@mvideos = Mvideo.order(date: :desc)
    @mvideos = Mvideo.paginate(:page => params[:page], :per_page => Mvideo.per_page).order(date: :desc)
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def calendar
    @header_bg='transparent'
  end
  
  private 
    def set_bg_dark
      @header_bg='bg-dark'
    end
  
end
