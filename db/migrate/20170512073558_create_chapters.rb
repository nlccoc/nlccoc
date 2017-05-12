class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.text :reference_osis,        null: false
      t.text :reference_human,       null: false
      t.text :content,               null: false
      t.text :previous_reference_osis
      t.text :previous_reference_human
      t.text :next_reference_osis
      t.text :next_reference_human
      t.integer :version_id
    end
  end
end
