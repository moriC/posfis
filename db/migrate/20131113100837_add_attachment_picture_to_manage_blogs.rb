class AddAttachmentPictureToManageBlogs < ActiveRecord::Migration
  def self.up
    change_table :manage_blogs do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :manage_blogs, :picture
  end
end
