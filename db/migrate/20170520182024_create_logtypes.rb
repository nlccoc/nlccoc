class CreateLogtypes < ActiveRecord::Migration[5.2]
  def change
    create_table :logtypes do |t|
      t.string  :name
      t.timestamps null: false
    end
  end
end
