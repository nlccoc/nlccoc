class AddYidToMvideo < ActiveRecord::Migration[5.2]
  def change
    add_column :mvideos, :youtubeID, :string
  end
end
