class ManageController < ApplicationController
	layout 'manage'
	before_filter :authenticate_user!

	def index
		friends = Manage::Friend.select("to_user_id").where(:from_user_id => current_user.id)
    @manage_blogs = Manage::Blog.where(:user_id => friends).order("created_at DESC").take(5)
		@quick_blog = Manage::Blog.new
		@blog_categories = Manage::BlogCategories.all
	end

	def create_blog
		@manage_blog = Manage::Blog.new(manage_blog_params)
    @manage_blog.user_id = current_user.id
    @manage_blog.condition = 1
    @manage_blog.save
    redirect_to manage_index_path
	end

	private
    # Never trust parameters from the scary internet, only allow the white list through.
    def manage_blog_params
      params.require(:manage_blog).permit(:user_id, :category_id, :title, :content, :condition, :picture)
    end

    
end
