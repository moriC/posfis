class AddAttachmentAvatarToUserinfos < ActiveRecord::Migration
  def self.up
    change_table :userinfos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :userinfos, :avatar
  end
end
