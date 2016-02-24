class AddAttachmentImageToImageforhomes < ActiveRecord::Migration
  def self.up
    change_table :imageforhomes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :imageforhomes, :image
  end
end
