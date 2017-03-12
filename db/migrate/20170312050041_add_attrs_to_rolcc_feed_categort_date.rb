class AddAttrsToRolccFeedCategortDate < ActiveRecord::Migration
  def change
    add_column :rolcc_feed_category_dates, :year, :integer
    add_column :rolcc_feed_category_dates, :month, :integer
    add_column :rolcc_feed_category_dates, :string, :string
  end
end
