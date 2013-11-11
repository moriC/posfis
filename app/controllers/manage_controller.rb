class ManageController < ApplicationController
	layout 'manage'
	before_filter :authenticate_user!

	def index
		@manage_blogs = Manage::Blog.all
	end
end
