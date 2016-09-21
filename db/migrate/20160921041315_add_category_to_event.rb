class AddCategoryToEvent < ActiveRecord::Migration
  def change
    add_column :events, :event_category_id, :integer
  end
end
