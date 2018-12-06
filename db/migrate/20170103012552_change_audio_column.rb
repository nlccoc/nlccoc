class ChangeAudioColumn < ActiveRecord::Migration
  def self.up
    rename_column :maudios, :frontpage, :featured
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
