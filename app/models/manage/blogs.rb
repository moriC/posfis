class Manage::Blogs < ActiveRecord::Base
	belongs_to :blog_category
end
