class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.string :book
      t.string :verse
      t.text :unformatted
      t.integer :version_id
      t.timestamp
    end
  end
end
