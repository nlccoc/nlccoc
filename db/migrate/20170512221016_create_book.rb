class CreateBook < ActiveRecord::Migration
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
