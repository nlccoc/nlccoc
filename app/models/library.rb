class Library < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
end
