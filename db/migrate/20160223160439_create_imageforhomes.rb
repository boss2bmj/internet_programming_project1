class CreateImageforhomes < ActiveRecord::Migration
  def change
    create_table :imageforhomes do |t|
      t.string :image_name
      t.text :description

      t.timestamps null: false
    end
  end
end
