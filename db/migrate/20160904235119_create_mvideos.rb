class CreateMvideos < ActiveRecord::Migration
  def change
    create_table :mvideos do |t|
      t.string :title
      t.date :date
      t.string :path
      t.text :desc

      t.timestamps null: false
    end
  end
end
