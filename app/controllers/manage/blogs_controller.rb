class Manage::BlogsController < ManageController
  before_action :set_manage_blog, only: [:show, :edit, :update, :destroy]

  # GET /manage/blogs
  # GET /manage/blogs.json
  def index
    @manage_blogs = Manage::Blog.where(:user_id => current_user.id)
  end

  # GET /manage/blogs/1
  # GET /manage/blogs/1.json
  def show
  end

  # GET /manage/blogs/new
  def new
    @manage_blog = Manage::Blog.new
    @blog_categories = Manage::BlogCategories.all
  end

  # GET /manage/blogs/1/edit
  def edit
    @blog_categories = Manage::BlogCategories.all
  end

  # POST /manage/blogs
  # POST /manage/blogs.json
  def create
    @manage_blog = Manage::Blog.new(manage_blog_params)
    @manage_blog.user_id = current_user.id
    @manage_blog.condition = 1

    respond_to do |format|
      if @manage_blog.save
        format.html { redirect_to @manage_blog, notice: 'Blog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @manage_blog }
      else
        format.html { render action: 'new' }
        format.json { render json: @manage_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manage/blogs/1
  # PATCH/PUT /manage/blogs/1.json
  def update
    respond_to do |format|
      if @manage_blog.update(manage_blog_params)
        format.html { redirect_to @manage_blog, notice: 'Blog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @manage_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manage/blogs/1
  # DELETE /manage/blogs/1.json
  def destroy
    @manage_blog.destroy
    respond_to do |format|
      format.html { redirect_to manage_blogs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manage_blog
      @manage_blog = Manage::Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manage_blog_params
      params.require(:manage_blog).permit(:user_id, :category_id, :title, :content, :condition, :picture)
    end
end
