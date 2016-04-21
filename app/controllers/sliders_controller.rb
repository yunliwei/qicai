class SlidersController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  def index

  end


  def show
  end

  # GET /tests/new
  def new
    @slider2 = Slider.new
  end

  # GET /tests/1/edit
  def edit
  end



  # POST /tests
  # POST /tests.json
  def create
    @slider2 = Slider.new(admin_params)

    respond_to do |format|
      if @slider2.save
        format.html { redirect_to sliders_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @slider2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do   |format|
      if @slider2.update(admin_params)
        format.html { redirect_to @slider2, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @slider2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @slider2.destroy
    respond_to do |format|
      format.html { redirect_to sliders_path, notice: '记录已经删除!' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @slider2 = Slider.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_params
    params.require(:slider).permit(:link,:slider)
  end
end
