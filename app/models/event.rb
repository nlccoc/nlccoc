class Event < ActiveRecord::Base
  has_many :event_categories
  has_many :categories, through: :event_categories
end
