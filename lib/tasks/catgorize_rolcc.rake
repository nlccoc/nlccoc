desc 'get rolcc feeds'
task categorize_rolcc_feed: :environment do
  @rolcc_feeds = RolccFeed.all
  books = []
  date_month = []
  @rolcc_feeds.each do |feed|
    book = feed.book.split(' ', 0)[0]

    books.push (book) unless books.include? book
    

    d_m = feed.date.strftime('%Y-%m')
    date_month.push (d_m) unless date_month.include? d_m
  end
  
  puts books
  puts date_month
end