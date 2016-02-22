class CreatePoiRacketInfos < ActiveRecord::Migration
  def change
    create_table :poi_racket_infos do |t|
      t.string :title_name
      t.text :description
      t.string :image_url
      t.string :shaft
      t.string :weight
      t.string :length
      t.integer :price

      t.timestamps null: false
    end
  end
end
