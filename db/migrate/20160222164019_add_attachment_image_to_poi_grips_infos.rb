class AddAttachmentImageToPoiGripsInfos < ActiveRecord::Migration
  def self.up
    change_table :poi_grips_infos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :poi_grips_infos, :image
  end
end
