class AddPrayerIntoRolccFeed < ActiveRecord::Migration
  def change
    add_column :rolcc_feeds, :prayer, :string
  end
end
