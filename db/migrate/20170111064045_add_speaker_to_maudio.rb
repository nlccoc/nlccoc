class AddSpeakerToMaudio < ActiveRecord::Migration
  def self.up
    add_column :maudios, :speaker, :string
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
