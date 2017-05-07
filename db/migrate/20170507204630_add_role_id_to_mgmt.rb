class AddRoleIdToMgmt < ActiveRecord::Migration
  def change
    add_reference :mgmts, :role, index: true, foreign_key: true
  end
end
