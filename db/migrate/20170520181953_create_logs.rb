class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.integer :logtype_id
      t.text    :text
      t.date    :date
      t.timestamps null: false
    end
  end
end
