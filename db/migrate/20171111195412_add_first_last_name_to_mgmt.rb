class AddFirstLastNameToMgmt < ActiveRecord::Migration
  def change
    add_column :mgmts, :first_name, :string
    add_column :mgmts, :last_name, :string
  end
end
