class AddAttachmentPostImageToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :post_image
    end
  end

  def self.down
    remove_attachment :listings, :post_image
  end
end
