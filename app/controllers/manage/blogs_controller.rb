class Manage::BlogsController < ManageController
	def index
	end

	def new
		@blog = Blogs.new
	end
end
