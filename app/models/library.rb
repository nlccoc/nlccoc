class Library < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  self.per_page = 20
  WillPaginate.per_page = 20
end
