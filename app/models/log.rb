class Log < ActiveRecord::Base
  belongs_to :logtype
  
  if(ENV['LOG_PER_PAGE'].nil?)
    self.per_page= 50
  else
    self.per_page = ENV['LOG_PER_PAGE'].to_i
  end
  
  def self.info(msg)
    log = Log.new
    log.logtype_id = 1
    log.text = msg
    log.datetime = DateTime.now
    log.save
  end
  
  def self.warn(msg)
    log = Log.new
    log.logtype_id = 2
    log.text = msg
    log.datetime = DateTime.now
    log.save
  end
end
