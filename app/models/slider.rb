class Slider < ActiveRecord::Base
  has_attached_file :image, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :image
end
