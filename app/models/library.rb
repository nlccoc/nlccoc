class Library < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  
  self.per_page = 20
  #WillPaginate.per_page = 20
  if(ENV['LIBRARY_PER_PAGE'].nil?)
    self.per_page= 50
  else
    self.per_page = ENV['LIBRARY_PER_PAGE'].to_i
  end
  
end
