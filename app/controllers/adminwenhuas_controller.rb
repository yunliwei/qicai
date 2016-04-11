class AdminwenhuasController < ApplicationController

  def index


  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @adminwenhua = Adminwenhua.new

  end

  # GET /tests/1/edit
  def edit

  end

  # POST /tests
  # POST /tests.json
  def create
    @adminwenhua = Adminwenhua.new(adminwenhuas_params)

    respond_to do |format|
      if @adminwenhua.save
        format.html { redirect_to edit_adminwenhuas_path(@adminwenhua), notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @adminwenhua }
      else
        format.html { render :new }
        format.json { render json: @adminwenhua.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @adminwenhua.update(adminwenhuas_paths)
        format.html { redirect_to adminwenhuas_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminwenhua }
      else
        format.html { render :edit }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @adminwenhua.destroy
    respond_to do |format|
      format.html { redirect_to adminwenhuas_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_adminwenhua }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_adminwenhua
    @adminwenhua = Adminwenhua.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def adminwenhua_params
    params.require(:adminwenhua).permit( :title,:content, )
  end

end
