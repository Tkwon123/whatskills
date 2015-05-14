class AddAttachmentImageToSkills < ActiveRecord::Migration
  def self.up
    change_table :skills do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :skills, :image
  end
end
