class CreateRolccFeedCategoryBook < ActiveRecord::Migration[5.2]
  def change
    create_table :rolcc_feed_category_books do |t|
      t.string :name
      t.timestamps
    end
  end
end
