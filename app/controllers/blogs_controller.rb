class BlogsController < ApplicationController
	def show
		@blog = Manage::Blog.find(params[:id])
		@user = User.find(@blog.user_id)
		friends = Manage::Friend.select("to_user_id").where(:from_user_id => @blog.user_id)
    @friends = Manage::Friend.where(:to_user_id => friends)
    @products = Manage::Product.where(:user_id => @blog.user_id)
	end
end
