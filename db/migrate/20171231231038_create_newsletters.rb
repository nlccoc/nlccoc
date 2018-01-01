class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.datetime :date
      t.string :path
      t.integer :location_id
    end
  end
end
