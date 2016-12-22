class CreateEventCategories < ActiveRecord::Migration
  def change
    create_table :event_categories do |t|
      t.integer :event_id
      t.integer :category_id
    end
  end
end