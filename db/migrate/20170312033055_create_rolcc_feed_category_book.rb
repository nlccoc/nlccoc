class CreateRolccFeedCategoryBook < ActiveRecord::Migration
  def change
    create_table :rolcc_feed_category_books do |t|
      t.string :name
      t.timestamps
    end
  end
end
