class AddLinkToRolccFeed < ActiveRecord::Migration
  def change
    add_column :rolcc_feeds, :link, :string
  end
end
