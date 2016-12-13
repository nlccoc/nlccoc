class Event < ActiveRecord::Base
  has_many :event_categories
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
end
