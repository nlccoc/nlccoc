class AddFirstLastNameToMgmt < ActiveRecord::Migration[5.2]
  def change
    add_column :mgmts, :first_name, :string
    add_column :mgmts, :last_name, :string
  end
end
