class TopsController < ActionController::Base
	layout 'tops'
	before_action :set_params, only: [:show]


	# ユーザページ
	def index
	end

	def show
		@blogs = Manage::Blog.where(:user_id => params[:id])
		friends = Manage::Friend.select("to_user_id").where(:from_user_id => params[:id])
    @friends = Manage::Friend.where(:to_user_id => friends)
    @products = Manage::Product.where(:user_id => params[:id])
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_params
      @User = User.find(params[:id])
    end
end
