require "nokogiri"

class RolccFeed < ActiveRecord::Base
  def verse
    Nokogiri::HTML(self.long_script).css('.verse')
  end
end
