class Event < ActiveRecord::Base
  has_many :event_categories, dependent: :destroy
  has_many :categories, through: :event_categories
  
  has_many :repeat_metum, autosave: true, dependent: :destroy
  has_one :featured_info, dependent: :destroy

=begin Get the first friday of the month
#!/usr/bin/env ruby

require 'date'

(1..12).each do |month|
  d = Date.new(2017, month, 1)
  puts d.wday
  puts (5- d.wday)%7
  d += (5- d.wday)%7
  puts d
end

=end

  def find_date_by_weekday_my(week, weekday, month, year)
   
    logger.debug year.to_s + ' ' + month.to_s
    
    d = DateTime.new(year, month, 1)
    d += (weekday - d.wday) % 7 + (week-1)*7
    if d < DateTime.now
      if month == 12
        year += 1
        month = 1
      else
        month +=1
      end
      
      d = DateTime.new(year, month, 1)
      d += (weekday - d.wday) % 7 + (week-1)*7
    end
    d
  end
  
  def find_date_by_weekday(week, weekday)
    year = DateTime.now.year
    month = DateTime.now.month
    d = DateTime.new(year, month, 1)
    d += (weekday - d.wday) % 7 + (week-1)*7
    if d < DateTime.now
      if month == 12
        year += 1
        month = 1
      else
        month +=1
      end
      
      d = DateTime.new(year, month, 1)
      d += (weekday - d.wday) % 7 + (week-1)*7
    end
    d
  end
  
  def latest_date_str
    self.latest_date.strftime("%Y/%m/%d")
    #.localtime.strftime("%Y/%m/%d")
  end
  def latest_date
    
    if self.repeat_metum.exists?
      #[DateTime.now.wday, 'test', self.datetime.wday, -1%7]
      #how many days from now
      if self.repeat_metum[0].repeat_interval > 0
        if (self.datetime > DateTime.now)
          self.datetime
        else
          if ((self.datetime.wday-DateTime.now.wday)%7).days.from_now > self.repeat_metum[0].valid_until
            self.datetime
          else
            ((self.datetime.wday-DateTime.now.wday)%7).days.from_now
          end
        end
      elsif !self.repeat_metum[0].repeat_week.nil?
        self.find_date_by_weekday(self.repeat_metum[0].repeat_week, self.repeat_metum[0].repeat_weekday)
      end
    else
      self.datetime
    end
  end
  
  def available?
    if self.latest_date >= Date.today
      true
    else
      false
    end
  end
  

  
  def decode_utf8_b64_desc
    URI.unescape(CGI::escape(Base64.decode64(self.desc)))
  end
  
  def gsub(input, replace)
    search = Regexp.new(replace.keys.map{|x| "(?:#{Regexp.quote(x)})"}.join('|'))
    input.gsub(search, replace)
  end
  
  def decodeURIComponent
    # decodeURIComponent(encodeURIComponent(symbols)) === symbols
    # CGI.unescape(CGI.escape(symbols))               === symbols
    CGI.unescape(gsub(self.desc.to_s,
        '%20' => '+',    '!' => '%21',  "'" => '%27',  '(' => '%28',  ')' => '%29',  '*' => '%2A',
        '~'   => '%7E'
    ))
  end
end
