class XinwensController < ApplicationController
  before_action :set_xinwen, only: [:show, :edit, :update, :destroy]
  def index
    @xinwenslefttitle = Xinwen.all

    if params[:id]

      @content = Xinwen.find(params[:id])

    else
      @content = Xinwen.first

    end



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
    @xinwen = Xinwen.new(xinwen_params)

    respond_to do |format|
      if @xinwen.save
        format.html { redirect_to adminxinwens_path, notice: 'Test was successfully created.' }
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
      if @adminxinwen.update(xinwen_params)
        format.html { redirect_to adminxinwens_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminxinwen }
      else
        format.html { render :edit }
        format.json { render json: @adminxinwen.errors, status: :unprocessable_entity }
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
  def set_xinwen
    @adminxinwen = Xinwen.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def xinwen_params
    params.require(:xinwen).permit( :title,:content,:author,:summary)
  end

end

