class CreateVerses < ActiveRecord::Migration[5.2]
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
