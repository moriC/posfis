class Manage::Blog < ActiveRecord::Base
	belongs_to :user
	has_attached_file :picture, {
    :styles => {
      :thumb => ["50x50#", :png],
      :medium => ["100x100#", :png],
      :large => ["300x300>", :png]
    },
    :default_url => "/assets/noimg.png"
  }
end
