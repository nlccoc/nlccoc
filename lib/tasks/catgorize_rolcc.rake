desc 'get rolcc feeds'
task categorize_rolcc_feed: :environment do
  @rolcc_feeds = RolccFeed.all
  
  date_month = []
  @rolcc_feeds.each do |feed|
    book = feed.book.split(' ', 0)[0]

    unless RolccFeedCategoryBook.exists?(:name => book)
      @book = RolccFeedCategoryBook.new
      @book.name=book
      @book.save
    end
    

    d_m = feed.date.strftime('%Y-%m')
    
    unless RolccFeedCategoryDate.exists?(:string => d_m)
      @dm = RolccFeedCategoryDate.new
      @dm.string = d_m
      @dm.month=feed.date.strftime('%m').to_i
      @dm.year=feed.date.strftime('%Y').to_i
      @dm.date=feed.date
      @dm.save
    end
  end
end