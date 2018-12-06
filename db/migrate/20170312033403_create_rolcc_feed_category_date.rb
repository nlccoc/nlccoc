class CreateRolccFeedCategoryDate < ActiveRecord::Migration
  def change
    create_table :rolcc_feed_category_dates do |t|
      t.date :date
      t.timestamps
    end
  end
end
