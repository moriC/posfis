class Manage::BlogsController < ManageController
	def index
	end

	def new
		@categories = BlogCategory.all
		@blog = Blogs.new
	end
end
