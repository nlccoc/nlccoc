class AddRoleIdToMgmt < ActiveRecord::Migration[5.2]
  def change
    add_reference :mgmts, :role, index: true, foreign_key: true
  end
end
