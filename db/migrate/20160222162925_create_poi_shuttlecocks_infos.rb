class CreatePoiShuttlecocksInfos < ActiveRecord::Migration
  def change
    create_table :poi_shuttlecocks_infos do |t|
      t.string :title_name
      t.text :description
      t.string :image_url
      t.integer :price
      t.integer :stock

      t.timestamps null: false
    end
  end
end
