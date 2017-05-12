class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.string :fullename
      t.text :copyright
      t.string :contact_url
      t.string :name
      t.string :url
      t.string :date
      t.timestamps
    end
  end
end
