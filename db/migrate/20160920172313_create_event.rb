class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :desc
      t.time :start_time
      t.integer :interval_min
      t.date :date
      t.integer :interval_day
      t.string :more_link

      t.timestamps null: false
    end
  end
end
