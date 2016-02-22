class CreatePoiStringInfos < ActiveRecord::Migration
  def change
    create_table :poi_string_infos do |t|
      t.string :title_name
      t.text :description
      t.string :image_url
      t.string :guage
      t.string :length
      t.string :color
      t.integer :price

      t.timestamps null: false
    end
  end
end
