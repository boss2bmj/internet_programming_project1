class AddAttachmentImageToPoiShuttlecocksInfos < ActiveRecord::Migration
  def self.up
    change_table :poi_shuttlecocks_infos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :poi_shuttlecocks_infos, :image
  end
end
