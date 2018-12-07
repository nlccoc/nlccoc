class CreateAnnotations < ActiveRecord::Migration[5.2]
  def change
    create_table :annotations do |t|
      t.string :osis
      t.string :link
      t.text :content
      t.integer :version_id
      t.timestamps
    end
  end
end
