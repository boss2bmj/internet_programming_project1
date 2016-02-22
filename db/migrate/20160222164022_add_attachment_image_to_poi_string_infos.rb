class AddAttachmentImageToPoiStringInfos < ActiveRecord::Migration
  def self.up
    change_table :poi_string_infos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :poi_string_infos, :image
  end
end
