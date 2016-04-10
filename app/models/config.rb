class Config < ActiveRecord::Base
  has_attached_file :logo, :url => "/:attachment/:id/:basename.:extension",  :path => ":rails_root/public/:attachment/:id/:basename.:extension"
  do_not_validate_attachment_file_type :logo
end
