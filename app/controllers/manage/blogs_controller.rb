class Manage::BlogsController < ManageController
	def index
		@blogs = Blogs.all
	end

	def new
		@categories = BlogCategory.all
		@blog = Blogs.new
	end

	def edit
		@categories = BlogCategory.all
		@blog = Blogs.find(params[:id])
	end

	def create
		@blog = Blogs.new(blog_params)

    if @blog.save
      redirect_to manage_blogs_path, notice: '新規ブログを正常に保存しました。'
    else
      render :new
    end
	end

	private
    def blog_params
      params.require(:blog).permit(:category_id, :title, :contents)
    end
end
