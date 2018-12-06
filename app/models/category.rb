class Category < ActiveRecord::Base
  has_many :event_categories, dependent: :destroy
  has_many :events, through: :event_categories
  
  def translated_name
    I18n.t(name)
  end
end
