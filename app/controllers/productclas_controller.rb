class ProductclasController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  def index
    @producttype=Productcla.all
  end





  def show
  end

  # GET /tests/new
  def new
    @adminproduct = Productcla.new
  end

  # GET /tests/1/edit
  def edit
  end



  # POST /tests
  # POST /tests.json
  def create
    @adminproduct = Productcla.new(admin_params)

    respond_to do |format|
      if @adminproduct.save
        format.html { redirect_to productclas_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
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
      if @adminproduct.update(admin_params)
        format.html { redirect_to productclas_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
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
      format.html { redirect_to productclas_path, notice: '记录已经删除!' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @adminproduct = Productcla.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_params
    params.require(:productcla).permit(:name)
  end
end
