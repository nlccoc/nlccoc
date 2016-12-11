class CreateEventCategories < ActiveRecord::Migration
  def change
    create_table :event_categories do |t|
      t.string :name
      t.string :variable

      t.timestamps null: false
    end
  end
end
