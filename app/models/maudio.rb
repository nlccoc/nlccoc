class Maudio < ActiveRecord::Base
  
  self.per_page = 20
  #WillPaginate.per_page = 20
  if(ENV['MAUDIO_PER_PAGE'].nil?)
    self.per_page= 3
  else
    self.per_page = ENV['MAUDIO_PER_PAGE'].to_i
  end
  
end
