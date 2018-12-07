class AddLocationToMvideo < ActiveRecord::Migration[5.2]
  def change
    add_column :mvideos, :location_id, :integer
  end
end
