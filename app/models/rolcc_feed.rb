require "nokogiri"

class RolccFeed < ActiveRecord::Base

  def verse
    Nokogiri::HTML(self.long_script).css('.verse')
  end
  
  def share
    doc = Nokogiri::HTML(self.long_script)
    doc.css('.verse').remove
    doc.content
  end
end
