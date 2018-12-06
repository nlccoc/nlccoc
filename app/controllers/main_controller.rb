class MainController < ApplicationController
  layout "extmain", except: [:index]
  before_action :set_bg_dark, only: [:cellgroups, :videos, :youngadults, :children, :rolcc_feed, :rolcc_feeds, :cellgroups, :audio, :weeklynewspaper, :pdfviewer]
  skip_before_filter :verify_authenticity_token, :only => [:audio]
  
  def index
    @mvideos = Mvideo.where('location_id = 1').order(date: :desc).limit(6)
    @categories = Category.all
    @maudios = Maudio.where(featured: true).order(date: :desc).take(2)
    @featured_events = Event.joins(:featured_info).sort_by(&:latest_date)
    @newsletter = Newsletter.order('date').last
    
    logger.debug(@newsletter.inspect)
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
    #Log.info("<span class='client-ip'>[#{request.remote_ip}]</span> checked finding cell groups")
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
    #Log.info("<span class='client-ip'>[#{request.remote_ip}]</span> read Rolcc Feed <span class='feed-book'>[#{@rolcc_feed.book}]</span><span class='feed-date'>[#{@rolcc_feed.date.strftime("%d")} #{@rolcc_feed.date.strftime("%b")}]</span>")
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
    # logger.debug params[:month]
    @query_str = nil
    @query_book = nil
    @query_date = nil
    if !params[:search_string].nil?
      @query_str = params[:search_string]
      @posts = RolccFeed.where("long_script like ? OR book like ?", "%#{params[:search_string]}%", "%#{params[:search_string]}%").paginate(page: params[:page], per_page: 5).order(date: :desc)
    else
      if params[:year].nil?
        # query without year
        if params[:book_name].nil?
          @posts = RolccFeed.paginate(page: params[:page], per_page: 5).order(date: :desc)
        else
          @query_book = params[:book_name]
          @posts = RolccFeed.where("book like ?", "%#{params[:book_name]}%").paginate(page: params[:page], per_page: 5).order(date: :desc)
        end
      else
        # logger.debug params[:year]
        query = ""
        if Rails.env.production?
          # postgresql
          query = query + "extract(year from date) = ?"
        else
          # postgresql
          query = query + "extract(year from date) = ?"
        end
        @posts = RolccFeed.where(query, params[:year]).paginate(page: params[:page], per_page: 5).order(date: :desc)
        @query_date = params[:year]
        if !params[:month].nil?
          if Rails.env.production?
            # postgresql
            query = query += " AND extract(month from date) = ?"
          else
            # postgresql
            query = query += " AND extract(month from date) = ?"
          end
          @query_date = @query_date + '/' + params[:month]
          # logger.debug query
          @posts = RolccFeed.where(query, params[:year], params[:month]).paginate(page: params[:page], per_page: 5).order(date: :desc)
        end
        
      end
    end

    @category_dates = RolccFeedCategoryDate.all.limit(20)
    @category_books = RolccFeedCategoryBook.all
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def pdfviewer
  end
  
  def sundaysermon
    #@mvideos = Mvideo.order(date: :desc)
    @mvideos = Mvideo.paginate(:page => params[:page], :per_page => Mvideo.per_page).order(date: :desc)
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def calendarEventView
    redirect_to children_prayer_path
  end
  
  def sermonListing
    redirect_to audio_path
  end
    
  
  def calendar
    @header_bg='transparent'
    @events = Event.all
    @obj = {}
    
    @events.each do |event| 
      if event.repeat_metum.length != 0 then
        if event.repeat_metum[0].repeat_interval!=0 then
        #logger.debug event.repeat_metum.length
        #logger.debug event.title
        dt = event.datetime
        #logger.debug dt.strftime("%m-%d-%Y")
        #logger.debug event.title
        #logger.debug 'Valid: '
        #logger.debug event.repeat_metum[0].valid_until.strftime("%m-%d-%Y")
          while dt < event.repeat_metum[0].valid_until do
            #logger.debug dt.strftime("%m-%d-%Y")
            if !@obj[dt.strftime("%m-%d-%Y")].nil? then
              @obj[dt.strftime("%m-%d-%Y")] = @obj[dt.strftime("%m-%d-%Y")] + "<br><a target='_blank' href='events/"+event.id.to_s+"'>" + event.title + "</a>"
            else
              @obj[dt.strftime("%m-%d-%Y")] = "<a target='_blank' href='events/"+event.id.to_s+"'>" + event.title + "</a>"
            end
            dt = dt+604800
          end
        elsif event.repeat_metum[0].repeat_interval ==0 then
          #logger.debug event.title
          if !event.repeat_metum[0].repeat_week.nil?
            @date = event.datetime
            month = @date.strftime("%m").to_i
            year = @date.strftime("%Y").to_i
            while @date < event.repeat_metum[0].valid_until do
              # logger.debug 'month = ' + month.to_s + ', year = ' +  year.to_s
              @date = event.find_date_by_weekday_my(event.repeat_metum[0].repeat_week, event.repeat_metum[0].repeat_weekday, month, year)
              if @date < event.repeat_metum[0].valid_until then
                # logger.debug event.title
                # logger.debug @date.strftime("%m-%d-%Y")
                if !@obj[@date.strftime("%m-%d-%Y")].nil? then
                  @obj[@date.strftime("%m-%d-%Y")] = @obj[@date.strftime("%m-%d-%Y")] + "<br><a target='_blank' href='events/"+event.id.to_s+"'>" + event.title + "</a>"
                else
                  @obj[@date.strftime("%m-%d-%Y")] = "<a target='_blank' href='events/"+event.id.to_s+"'>" + event.title + "</a>"
                end
              end
              
              if month >= 12
                month = 1
                year = year + 1
              else
                month = month + 1
              end
              
            end
            
          end
        end
      else
        if !@obj[event.datetime.strftime("%m-%d-%Y")].nil? then
          @obj[event.datetime.strftime("%m-%d-%Y")] = @obj[event.datetime.strftime("%m-%d-%Y")] + "<br><a target='_blank' href='events/"+event.id.to_s+"'>" + event.title + "</a>"
        else
          @obj[event.datetime.strftime("%m-%d-%Y")] = "<a target='_blank' href='events/"+event.id.to_s+"'>" + event.title + "</a>"
        end
        #logger.debug event.latest_date.strftime("%m-%d-%Y") + ': ' + event.title
      end
      
      #logger.debug @obj.to_json
    end
    
    @events_array = @obj.to_json
    #{
    #  '05-07-2017' => '<a href=\"//finshare-boo0330.c9users.io/events/16\" target=\"_blank\">裝備課程 - 約珥書</a>',
		#  '06-03-2017' => '<a href=\"//finshare-boo0330.c9users.io/zh/events/17\" target=\"_blank\">新生命獻堂典禮</a>',
		#  '05-05-2017' => '<a href=\"//finshare-boo0330.c9users.io/zh/events/7\" target=\"_blank\">每個月青年大組</a>',
		#  '05-09-2017' => '<a href=\"//finshare-boo0330.c9users.io/zh/events/8\" target=\"_blank\">每週禱告會</a>',
		#  '05-16-2017' => '<a href=\"//finshare-boo0330.c9users.io/zh/events/8\" target=\"_blank\">每週禱告會</a>',
		#  '05-23-2017' => '<a href=\"//finshare-boo0330.c9users.io/zh/events/8\" target=\"_blank\">每週禱告會</a>',
		#  '05-30-2017' => '<a href=\"//finshare-boo0330.c9users.io/zh/events/8\" target=\"_blank\">每週禱告會</a>',
		#  '06-02-2017' => '<a href=\"//finshare-boo0330.c9users.io/zh/events/7\" target=\"_blank\">每個月青年大組</a>'}.to_json
  end
  
  def weeklynewspaper
  end
  
  def biblesearch
    @message = 'Result is here.'
    @result = []
=begin
    @results=[]
    @allverses = DbTextSearch::FullText.new(Verse.all.where('version_id = ?', 1), :unformatted).search('耶穌')
    @allverses.group_by(&:book).each do |book, results|
      @book = {}
      @book['book']={}
      @book['book']['name']= Book.where(["osis = ? AND version_id = ?", book, 1]).first.human
      
      #@book['book'] = Book.where(["osis = ?", book]).first.human
      @book['book']['verses']=[]
      results.each do |result|
        @verse = Hash.new()
        
        #@book['verse'] << {'number': result.verse.to_s.split('.').map{|n| n.to_i}.join(':')}
        @verse['number'] = result.verse.to_s.split('.').map{|n| n.to_i}.join(':')
        @verse['unformatted'] = result.unformatted
        #puts "#{result.verse.to_s.split('.').map{|n| n.to_i}.join(':')} #{result.unformatted}"
        @book['book']['verses'] << @verse
      end
      @results << @book
    end 
=end
    respond_to do |format|
      format.html
      #format.json { render :json => @results.to_json }
    end
  end
  
  def searchpost
    @keyword = params[:keyword]
    @version = params[:version]
    version_id = 1
    book_cnt=0
    @results={}
    @results['keyword']=@keyword
    if !@keyword.nil? && !@keyword.empty? then

      if @version == 'cunpts' then
        version_id = 1
      elsif @version == 'rcuvts' then
        version_id = 2
      end
      #@allverses = DbTextSearch::FullText.new(Verse.all.where('version_id = ?', version_id), :unformatted).search(@keyword)
      
      #logger.debug @allverses.count
      if defined?(ActiveRecord::Base)
        config = ActiveRecord::Base.configurations[Rails.env] ||
                    Rails.application.config.database_configuration[Rails.env]
        config['pool'] = ENV['DB_POOL'] || 5
        ActiveRecord::Base.establish_connection(config)
      end
      if [Rails.env] == 'development' then
        @allverses=ActiveRecord::Base.connection.exec_query('SELECT "verses".* FROM "verses" WHERE (version_id = ' + version_id.to_s + ') AND ("verses"."unformatted" COLLATE NOCASE LIKE \'%' + @keyword + '%\')')
      else
        @allverses=ActiveRecord::Base.connection.exec_query('SELECT "verses".* FROM "verses" WHERE (version_id = ' + version_id.to_s + ') AND ("verses"."unformatted" LIKE \'%' + @keyword + '%\')')
      end
      @results['verse_count'] = @allverses.length
      @results['results']=[]
      
      @allverses = @allverses.to_hash.map(&:symbolize_keys)
    
      
      @allverses.group_by{|d| d[:book]}.each do |book, results|
        book_cnt = book_cnt+1
        @book = {}
        @book['book']={}
        @book['book']['osis'] = book
        @book['book']['name'] = Book.where(["osis = ? AND version_id = ?", book, version_id]).first.human
        
        @book['book']['verses']=[]
        results.each do |result|
          @verse = Hash.new()
          
          #@book['verse'] << {'number': result.verse.to_s.split('.').map{|n| n.to_i}.join(':')}
          @verse['number'] = result[:verse].to_s.split('.').map{|n| n.to_i}.join(':')
          @verse['unformatted'] = result[:unformatted]
          #puts "#{result.verse.to_s.split('.').map{|n| n.to_i}.join(':')} #{result.unformatted}"
          @book['book']['verses'] << @verse
        end
        @results['results'] << @book
      end
=begin
      @allverses.group_by(&:book).each do |book, results|
        book_cnt = book_cnt+1
        @book = {}
        @book['book']={}
        @book['book']['osis'] = book
        @book['book']['name'] = Book.where(["osis = ? AND version_id = ?", book, version_id]).first.human
        
        #@book['book'] = Book.where(["osis = ?", book]).first.human
        @book['book']['verses']=[]
        results.each do |result|
          @verse = Hash.new()
          
          #@book['verse'] << {'number': result.verse.to_s.split('.').map{|n| n.to_i}.join(':')}
          @verse['number'] = result.verse.to_s.split('.').map{|n| n.to_i}.join(':')
          @verse['unformatted'] = result.unformatted
          #puts "#{result.verse.to_s.split('.').map{|n| n.to_i}.join(':')} #{result.unformatted}"
          @book['book']['verses'] << @verse
        end
 
        @results['results'] << @book
      end 
=end
    end
    @results['book_count'] = book_cnt
    respond_to do |format|
      format.html { render :action => 'biblesearch' }
      format.json { render :json => @results.to_json }
    end
  end
  
  def pastorshare
  end
  
  private 
    def set_bg_dark
      @header_bg='bg-dark'
    end
  
end
