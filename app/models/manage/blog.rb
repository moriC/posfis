class Manage::Blog < ActiveRecord::Base
	belongs_to :user
	has_attached_file :picture
end
