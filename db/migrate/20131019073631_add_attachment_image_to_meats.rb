class AddAttachmentImageToMeats < ActiveRecord::Migration
  def self.up
    change_table :meats do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :meats, :image
  end
end
