class AddTimestampIntoNewsletters < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :newsletters, null: true
  end
end
