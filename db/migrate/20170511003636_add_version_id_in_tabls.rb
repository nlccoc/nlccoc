class AddVersionIdInTabls < ActiveRecord::Migration
  def change
    add_column :annotations, :version_id, :integer
    add_index :annotations, :version_id
    add_column :books, :version_id, :integer
    add_index :books, :version_id
    add_column :chapters, :version_id, :integer
    add_index :chapters, :version_id
  end
end
