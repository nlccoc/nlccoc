class Mvideo < ActiveRecord::Base
  belongs_to :location
  
  if(ENV['MVIDEO_PER_PAGE'].nil?)
    self.per_page=3
  else
    self.per_page = ENV['MVIDEO_PER_PAGE'].to_i
  end
end
