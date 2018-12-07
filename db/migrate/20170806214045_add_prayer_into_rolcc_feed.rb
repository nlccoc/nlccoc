class AddPrayerIntoRolccFeed < ActiveRecord::Migration[5.2]
  def change
    add_column :rolcc_feeds, :prayer, :string
  end
end
