class ManageController < ApplicationController
	layout 'manage'
	before_filter :authenticate_user!

	def index
		friends = Manage::Friend.select("to_user_id").where(:from_user_id => current_user.id)
    @manage_blogs = Manage::Blog.where(:user_id => friends).order("created_at DESC").take(5)
		@quick_blog = Manage::Blog.new
		@blog_categories = Manage::BlogCategories.all
		all_user_logs = Log.where(:for_user_id => 0).where_values.reduce(:and)
		current_user_logs = Log.where(:for_user_id => current_user.id).where_values.reduce(:and)
		@logs = Log.where(all_user_logs.or(current_user_logs)).limit(10)

		user_activities = PublicActivity::Activity.where(:owner_id => current_user).where_values.reduce(:and)
		user_friends_activities = PublicActivity::Activity.where(:owner_id => friends).where_values.reduce(:and)
		@activities = PublicActivity::Activity.order("created_at DESC").where(:owner_type => "User").where(user_activities.or(user_friends_activities)).limit(20)

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
