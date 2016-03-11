class Listing < ActiveRecord::Base
  self.table_name = "listings"
  has_attached_file :post_image
  validates_attachment_content_type :post_image, :content_type => /\Aimage\/.*\Z/
end
