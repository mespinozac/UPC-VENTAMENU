class AddAttachmentPictureToFoods < ActiveRecord::Migration
  def self.up
    change_table :foods do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :foods, :picture
  end
end
