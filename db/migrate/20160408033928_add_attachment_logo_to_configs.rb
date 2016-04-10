class AddAttachmentLogoToConfigs < ActiveRecord::Migration
  def self.up
    change_table :configs do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :configs, :logo
  end
end
