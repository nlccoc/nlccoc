class AddAbbrToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :human_abbr, :string
  end
end
