class Mvideo < ActiveRecord::Base
  self.per_page = ENV['MVIDEO_PER_PAGE'].to_i | 3
end
