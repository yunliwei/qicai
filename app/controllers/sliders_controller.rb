class SlidersController < ApplicationController
  before_action :set_roll, only: [:show, :edit, :update, :destroy]
  def index
    @rolls = Slider.all


  end


  def show
  end

  # GET /tests/new
  def new
    @roll = Slider.new


  end

  # GET /tests/1/edit
  def edit
    @rolls = Slider.all
    @roll=@sliders.first
  end



  # POST /tests
  # POST /tests.json
  def create
    @roll = Slider.new(roll_params)

    respond_to do |format|
      if @roll.save
        format.html { redirect_to sliders_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @roll }
      else
        format.html { render :new }
        format.json { render json: @roll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do   |format|
      if @slider1.update(slider1_params)
        format.html { redirect_to @slider1, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @slider1 }
      else
        format.html { render :edit }
        format.json { render json: @slider1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @slider1.destroy
    respond_to do |format|
      format.html { redirect_to sliders_path, notice: '记录已经删除!' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_roll
    @roll = Slider.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def roll_params
    params.require(:slider).permit(:link,:image_file_name)
  end
end
