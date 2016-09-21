class AddEventTypeIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_type_id, :integer
  end
end
