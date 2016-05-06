class AdminproductsController < ApplicationController
  before_action :set_adminproduct, only: [:show, :edit, :update, :destroy]
  def index

    @leftcontent=Product.all
  end





  def show
  end

  # GET /tests/new
  def new
    @adminproduct = Product.new
    @prtype=Productcla.all
  end

  # GET /tests/1/edit
  def edit
  end



  # POST /tests
  # POST /tests.json
  def create
    @adminproduct = Product.new(adminproduct_params)

    respond_to do |format|
      if @adminproduct.save
        format.html { redirect_to edit_adminproduct_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @adminproduct }
      else
        format.html { render :new }
        format.json { render json: @adminproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @product.update(adminproducts_paths)
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
      format.html { redirect_to adminproducts_path, notice: '记录已经删除!' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_adminproduct
    @adminproduct = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def adminproduct_params
    params.require(:adminproduct).permit(:productcla_id,:name, :price, :summary, :content, :image)
  end
end
