class ChangeDateToDatetimeOnLogs < ActiveRecord::Migration[5.2]
  def change
    rename_column :logs, :date, :datetime
    change_column :logs, :datetime, :datetime
  end
end
