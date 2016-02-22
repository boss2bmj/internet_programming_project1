class AddAttachmentImageToPoiRacketInfos < ActiveRecord::Migration
  def self.up
    change_table :poi_racket_infos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :poi_racket_infos, :image
  end
end
