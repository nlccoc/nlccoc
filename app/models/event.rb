class Event < ActiveRecord::Base
  belongs_to :event_type
  belongs_to :event_status
  belongs_to :event_category
end
