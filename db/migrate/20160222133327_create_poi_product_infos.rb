class CreatePoiProductInfos < ActiveRecord::Migration
  def change
    create_table :poi_product_infos do |t|
      t.text :detailed_description
      t.references :product, index: true, foreign_key: true
      t.integer :poi_info_id
      t.string :poi_info_type

      t.timestamps null: false
    end
    add_index :poi_product_infos, :poi_info_id
    add_index :poi_product_infos, :poi_info_type
  end
end
