class AddStatusToEvent < ActiveRecord::Migration
  def change
    add_column :events, :event_status_id, :integer
  end
end
