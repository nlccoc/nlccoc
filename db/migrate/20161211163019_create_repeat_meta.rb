class CreateRepeatMeta < ActiveRecord::Migration
  def change
    create_table :repeat_meta do |t|
      t.integer :event_id
      t.timestamp :repeat_start
      t.integer :repeat_interval
      t.integer :repeat_year
      t.integer :repeat_month
      t.integer :repeat_week
      t.integer :repeat_day
      t.integer :repeat_weekday
      t.timestamp :valid_until

      t.timestamps null: false
    end
  end
end
