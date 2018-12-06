class AddYidToMvideo < ActiveRecord::Migration
  def change
    add_column :mvideos, :youtubeID, :string
  end
end
