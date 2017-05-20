class ChangeDateToDatetimeOnLogs < ActiveRecord::Migration
  def change
    rename_column :logs, :date, :datetime
    change_column :logs, :datetime, :datetime
  end
end
