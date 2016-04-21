class AddAttachmentSliderToSliders < ActiveRecord::Migration
  def self.up
    change_table :sliders do |t|
      t.attachment :slider
    end
  end

  def self.down
    remove_attachment :sliders, :slider
  end
end
