class CreateNewsletters < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletters do |t|
      t.string :title
      t.datetime :date
      t.string :path
      t.integer :location_id
    end
  end
end
