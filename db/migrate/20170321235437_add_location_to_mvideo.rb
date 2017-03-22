class AddLocationToMvideo < ActiveRecord::Migration
  def change
    add_column :mvideos, :location_id, :integer
  end
end
