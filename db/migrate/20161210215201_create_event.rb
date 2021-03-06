class CreateEvent < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :desc
      t.string :location
      t.text :short_desc
      t.datetime :datetime
      t.integer :event_period
    end
  end
end
