class AddLinkToRolccFeed < ActiveRecord::Migration[5.2]
  def change
    add_column :rolcc_feeds, :link, :string
  end
end
