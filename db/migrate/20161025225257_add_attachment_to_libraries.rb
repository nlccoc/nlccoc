class AddAttachmentToLibraries < ActiveRecord::Migration
  def change
    add_column :libraries, :attachment, :string
  end
end
