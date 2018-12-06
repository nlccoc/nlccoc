class AddAbbrToBook < ActiveRecord::Migration
  def change
    add_column :books, :human_abbr, :string
  end
end
