class DropTables < ActiveRecord::Migration
  def change
    drop_table :events if ActiveRecord::Base.connection.table_exists? :events
    drop_table :event_statuses if ActiveRecord::Base.connection.table_exists? :event_statuses
    drop_table :event_categories if ActiveRecord::Base.connection.table_exists? :event_categories
  end
end
