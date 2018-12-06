class Version < ActiveRecord::Base
  has_many :verses
  has_many :annotations
  has_many :books
  has_many :chapters
end
