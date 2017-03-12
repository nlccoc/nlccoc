require 'nokogiri'   
require 'open-uri'

desc 'Get latest feed, and generate category if needed'
task get_and_generate_latest_feed: [:get_latest_rolcc_feed, :generate_category] do
  puts 'Ready to go!'
end

desc 'get rolcc feeds'
task get_rolcc_feeds: :environment do
  puts "Get ROLCC FEED"
  
  page = Nokogiri::HTML(open("https://devotion.rolcc.net/"))   
  
  #puts page.css('title')
  articles = page.css('.postArticle')
  
  articles.each do |a|
    @rolcc_feed = RolccFeed.new
    @rolcc_feed.book = a.css('h3.graf--leading').text
    dt = DateTime.parse(a.css('time').attr('datetime'))
    @rolcc_feed.date = dt.to_date
    @rolcc_feed.time = dt
    if !RolccFeed.exists?(date: @rolcc_feed.date)
      @rolcc_short = ''
      short = a.css('p.graf--p')
      @rolcc_feed.short_script = ''
      short.each do |ss|
        if @rolcc_feed.short_script == ''
          @rolcc_feed.short_script = ss.text
        else
          @rolcc_feed.short_script = "#{@rolcc_feed.short_script}<br><br>#{ss.text}"
        end
      end
      
      #puts @rolcc_feed.short_script
    
    
      readmore_link = a.css('.postArticle-readMore > a').attr('href')
      @rolcc_feed.link=readmore_link
      page1 = Nokogiri::HTML(open(readmore_link))
      
      long = page1.css('section p.graf--p')
      @rolcc_feed.long_script = ''
      long[0...-3].each do |ls|
        if @rolcc_feed.long_script == ''
          @rolcc_feed.long_script = "<span class='verse'>#{ls.text[1...-1]}</span><hr>"
          puts @rolcc_feed.long_script
        else
          @rolcc_feed.long_script = "#{@rolcc_feed.long_script}<br><br>#{ls.text}"
        end
      end
      
      #puts @rolcc_feed.long_script
      
      @rolcc_feed.save!
      puts @rolcc_feed.book
    else
      puts 'Existed!'
    end
  end
end

desc 'get latest rolcc feed'
task get_latest_rolcc_feed: :environment do
  
  page = Nokogiri::HTML(open("https://devotion.rolcc.net/"))   
  
  articles = page.css('.postArticle')

  @rolcc_feed = RolccFeed.new
  @rolcc_feed.book = articles[0].css('h3.graf--leading').text
  book = @rolcc_feed.book.split(' ', 0)[0]
  #Save to category-book if category book not exist
  
  dt = DateTime.parse(articles[0].css('time').attr('datetime'))
  @rolcc_feed.date = dt.to_date
  
  dm=@rolcc_feed.date.strftime("%Y-%m")
  
  @rolcc_feed.time = dt
  #puts RolccFeed.exists?(date: @rolcc_feed.date)
  
  unless RolccFeed.exists?(date: @rolcc_feed.date)
    unless RolccFeedCategoryBook.exists?(name: book)
      puts "Create Category - #{book}"
      RolccFeedCategoryBook.create(name: book)
    end
    
    unless RolccFeedCategoryDate.exists?(string: dm)
      puts "Create Category - #{dm}"
      RolccFeedCategoryDate.create(date: dt, year: @rolcc_feed.date.strftime('%Y').to_i, month: @rolcc_feed.date.strftime('%m').to_i, string: dm)
    end
    @rolcc_short = ''
    short = articles[0].css('p.graf--p')
    @rolcc_feed.short_script = ''
    short.each do |ss|
      if @rolcc_feed.short_script == ''
        @rolcc_feed.short_script = "#{ss.text}"
      else
        @rolcc_feed.short_script = "#{@rolcc_feed.short_script}<br><br>#{ss.text}"
      end
    end
    
    #puts @rolcc_feed.short_script
  
  
    readmore_link = articles[0].css('.postArticle-readMore > a').attr('href')
    @rolcc_feed.link=readmore_link
    page1 = Nokogiri::HTML(open(readmore_link))
    
    long = page1.css('section p.graf--p')
    
    @rolcc_feed.long_script = ''
    long[0...-3].each do |ls|
      if @rolcc_feed.long_script == ''
        @rolcc_feed.long_script = "<span class='verse'>#{ls.text}</span><hr>"
      else
        @rolcc_feed.long_script = "#{@rolcc_feed.long_script}<br><br>#{ls.text}"
      end
    end
    
    #puts @rolcc_feed.long_script
    
    @rolcc_feed.save!
    #puts @rolcc_feed.book
    
  end
end

desc 'generate new categories'
task generate_category: :environment do
  
end