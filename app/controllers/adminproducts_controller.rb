class AdminproductsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  def index
    @leftcontent=Product.all
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
    @adminproduct = Product.new(admin_params)

    respond_to do |format|
      if @adminproduct.save
        format.html { redirect_to admins_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @product.update(admin_params)
        format.html { redirect_to @admin, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @adminproduct.destroy
    respond_to do |format|
      format.html { redirect_to adminproducts_path, notice: '记录已经删除!' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @adminproduct = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_params
    params.require(:adminproduct).permit(:name, :price, :summary, :content, :image)
  end
end
