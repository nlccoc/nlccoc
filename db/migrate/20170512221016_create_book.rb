class CreateBook < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :number
      t.text :osis
      t.text :human
      t.integer :chapters
      t.integer :version_id
      t.timestamps
    end
  end
end
