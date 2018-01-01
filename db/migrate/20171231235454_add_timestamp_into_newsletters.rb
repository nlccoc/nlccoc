class AddTimestampIntoNewsletters < ActiveRecord::Migration
  def change
    add_timestamps :newsletters
  end
end
