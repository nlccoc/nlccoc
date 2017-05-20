class Log < ActiveRecord::Base
  belongs_to :logtype
  
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
