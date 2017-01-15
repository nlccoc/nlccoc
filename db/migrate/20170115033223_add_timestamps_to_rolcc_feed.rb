class AddTimestampsToRolccFeed < ActiveRecord::Migration
  def change
     add_column :rolcc_feeds, :created_at, :datetime
     add_column :rolcc_feeds, :updated_at, :datetime
  end
end
