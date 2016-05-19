class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index

    @recordtype=""
    @showcontent=nil

    
   if (params[:ptypeid]==nil && params[:pclaid]==nil)

     @recordtype="lists"
     @allcontent=Product.all

   end


    if (params[:pclaid]!=nil)
     @recordtype="sec"
      ssel="select * from products where productcla_id="+params[:pclaid]
      @allcontent=Product.find_by_sql(ssel)

    end

    if (params[:ptypeid]!=nil)

      @recordtype="one"

      @showcontent=Product.find(params[:ptypeid])


    end

  end





  def show
  end

  # GET /tests/new
  def new
    @adminproduct = Product.new
  end

  # GET /tests/1/edit
  def edit
  end



  # POST /tests
  # POST /tests.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to adminproducts_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @adminproduct.update(product_params)
        format.html { redirect_to adminproducts_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminproduct }
      else
        format.html { render :edit }
        format.json { render json: @adminproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @adminproduct.destroy
    respond_to do |format|
      format.html { redirect_to adminproduct_path, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @adminproduct = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:productcla_id,:name, :price, :summary, :content, :image)
  end
end
