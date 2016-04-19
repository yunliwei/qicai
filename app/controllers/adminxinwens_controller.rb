class AdminxinwensController < ApplicationController
  before_action :set_adminxinwen, only: [:show, :edit, :update, :destroy]
  def index

    @adminxinwens= Xinwen.all


  end

  # GET /tests/1
  # GET /tests/1.json
  def show

  end

  # GET /tests/new
  def new
    @adminxinwen =Xinwen.new

  end

  # GET /tests/1/edit
  def edit

  end

  # POST /tests
  # POST /tests.json
  def create
    @adminxinwen = Xinwen.new(adminxinwen_params)

    respond_to do |format|
      if @adminxinwen.save
        format.html { redirect_to adminwenhua_path(@adminxinwen),notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @adminxinwen }
      else
        format.html { render :new }
        format.json { render json: @adminxinwen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @adminxinwen.update(adminxinwens_paths)
        format.html { redirect_to adminxinwens_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminxinwen }
      else
        format.html { render :edit }
        format.json { render json: @adminxinwens.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @adminxinwen.destroy
    respond_to do |format|
      format.html { redirect_to adminxinwens_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_adminxinwen }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_adminxinwen
    @adminxinwen = Xinwen.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def adminxinwen_params
    params.require(:xinwen).permit( :title,:content,:author,:summary)
  end

end


