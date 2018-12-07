class AddAttachmentToLibraries < ActiveRecord::Migration[5.2]
  def change
    add_column :libraries, :attachment, :string
  end
end
