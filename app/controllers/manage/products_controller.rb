class Manage::ProductsController < ManageController
  before_action :set_manage_product, only: [:show, :edit, :update, :destroy]

  # GET /manage/products
  # GET /manage/products.json
  def index
    @manage_products = Manage::Product.where(:user_id => current_user.id)
  end

  # GET /manage/products/1
  # GET /manage/products/1.json
  def show
  end

  # GET /manage/products/new
  def new
    @manage_product = Manage::Product.new
  end

  # GET /manage/products/1/edit
  def edit
  end

  # POST /manage/products
  # POST /manage/products.json
  def create
    @manage_product = Manage::Product.new(manage_product_params)
    @manage_product.user_id = current_user.id

    respond_to do |format|
      if @manage_product.save
        format.html { redirect_to @manage_product, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @manage_product }
      else
        format.html { render action: 'new' }
        format.json { render json: @manage_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manage/products/1
  # PATCH/PUT /manage/products/1.json
  def update
    respond_to do |format|
      if @manage_product.update(manage_product_params)
        format.html { redirect_to @manage_product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @manage_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manage/products/1
  # DELETE /manage/products/1.json
  def destroy
    @manage_product.destroy
    respond_to do |format|
      format.html { redirect_to manage_products_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manage_product
      @manage_product = Manage::Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manage_product_params
      params.require(:manage_product).permit(:product_name, :product_type_id, :price, :sp_price, :count, :delivery_fee, :delivery_type_id, :contents, :picture)
    end
end
