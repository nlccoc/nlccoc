class CreateEventStatuses < ActiveRecord::Migration
  def change
    create_table :event_statuses do |t|
      t.string :name
      t.string :variable

      t.timestamps null: false
    end
  end
end
