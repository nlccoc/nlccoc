class AddSpeakerToMaudio < ActiveRecord::Migration[5.2]
  def self.up
    add_column :maudios, :speaker, :string
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
