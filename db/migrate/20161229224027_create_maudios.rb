class CreateMaudios < ActiveRecord::Migration[5.2]
  def change
    create_table :maudios do |t|
      t.string :title
      t.string :path
      t.text :desc
      t.integer :length
      t.boolean :frontpage
      t.date :date

      t.timestamps null: false
    end
  end
end
