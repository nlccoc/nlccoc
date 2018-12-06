class CreateRolccFeed < ActiveRecord::Migration
  def change
    create_table :rolcc_feeds do |t|
      t.string :book
      t.date :date
      t.time :time
      t.text :short_script
      t.string :long_script
    end
  end
end
