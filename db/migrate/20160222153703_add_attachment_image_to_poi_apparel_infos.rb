class AddAttachmentImageToPoiApparelInfos < ActiveRecord::Migration
  def self.up
    change_table :poi_apparel_infos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :poi_apparel_infos, :image
  end
end
