class CreateFeaturedInfo < ActiveRecord::Migration
  def change
    create_table :featured_infos do |t|
      t.references :event, index: true, foreign_key: true
      t.string :image_path
      t.string :title
      t.string :subtitle
    end
  end
end
