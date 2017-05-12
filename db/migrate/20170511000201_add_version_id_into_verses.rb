class AddVersionIdIntoVerses < ActiveRecord::Migration
  def change
    add_column :verses, :version_id, :integer
    add_index :verses, :version_id
  end
end
