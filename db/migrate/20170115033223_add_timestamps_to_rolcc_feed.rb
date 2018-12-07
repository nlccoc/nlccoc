class AddTimestampsToRolccFeed < ActiveRecord::Migration[5.2]
  def change
     add_column :rolcc_feeds, :created_at, :datetime
     add_column :rolcc_feeds, :updated_at, :datetime
  end
end
