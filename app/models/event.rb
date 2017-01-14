class Event < ActiveRecord::Base
  has_many :event_categories, dependent: :destroy
  has_many :categories, through: :event_categories
  
  has_many :repeat_metum
  
  def latest_date
    if self.repeat_metum.exists?
      #[DateTime.now.wday, 'test', self.datetime.wday, -1%7]
      #how many days from now
      ((self.datetime.wday-DateTime.now.wday)%7).days.from_now.strftime("%Y/%m/%d")
    else
      self.datetime.strftime("%Y/%m/%d")
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
