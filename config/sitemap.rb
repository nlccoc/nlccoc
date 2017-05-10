# Set the host name for URL creation
require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = "http://www.nlccoc.org"

SitemapGenerator::Sitemap.create do
  
  add '/', :priority => 1, :changefreq => 'daily'
  add '/rolcc_feeds', :priority => 0.7, :changefreq => 'daily'
  add '/children/prayer'
  add 'contact'
  
  add '/lv'
  add '/videos_lv'
  
  RolccFeed.find_each do |rolccfeed|
    add rolcc_feed_path(rolccfeed), :lastmod => rolccfeed.updated_at
  end
  
  Event.find_each do |event|
    add event_path(event, :locale => 'zh'), :priority => 0.5, :changefreq => 'weekly', :lastmod => Time.now
  end
  
  group(:sitemaps_path => 'zh/', :filename => :tr_chinese) do
    
    add '/comingsoon'
    add "comingsoon"
    add "share" 
    add 'home'
    add "give"
    add "cellgroups"
    add "videos"
    add "audio"
    add "about"
    add "youngadults"
    add "children"
    add "worship"
    add "equipping"
    add "mission"
    add "pastors"
    add "contact"
    add "build"
    add "mission"
    add "ministries"
    add "rolcc_feeds"
    add "teach"
    add "sundaysermon"
  end
  
  group(:sitemaps_path => 'en/', :filename => :english) do
    add '/comingsoon'
    add "comingsoon"
    add "share" 
    add 'home'
    add "give"
    add "cellgroups"
    add "videos"
    add "audio"
    add "about"
    add "youngadults"
    add "children"
    add "worship"
    add "equipping"
    add "mission"
    add "pastors"
    add "contact"
    add "build"
    add "mission"
    add "ministries"
    add "rolcc_feeds"
    add "teach"
    add "sundaysermon"
  end
  
  group(:sitemaps_path => 'cn/', :filename => :simple_chinese) do
    add '/comingsoon'
    add "comingsoon"
    add "share" 
    add 'home'
    add "give"
    add "cellgroups"
    add "videos"
    add "audio"
    add "about"
    add "youngadults"
    add "children"
    add "worship"
    add "equipping"
    add "mission"
    add "pastors"
    add "contact"
    add "build"
    add "mission"
    add "ministries"
    add "rolcc_feeds"
    add "teach"
    add "sundaysermon"
  end
  
  
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
