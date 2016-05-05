class RosesController < ApplicationController
  before_action :set_rose, only: [:show, :edit, :update, :destroy]
  def index

    @lefttitle = Rose.all

    if params[:id]

      @content = Rose.find(params[:id])

    else
      @content = Rose.first

    end

  end

  # GET /tests/1
  # GET /tests/1.json
  def show

  end

  # GET /tests/new
  def new
    @adminrose =Rose.new

  end

  # GET /tests/1/edit
  def edit

  end

  # POST /tests
  # POST /tests.json
  def create
    @rose = Rose.new(rose_params)

    respond_to do |format|
      if @rose.save
        format.html { redirect_to adminroses_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @adminrose }
      else
        format.html { render :new }
        format.json { render json: @adminrose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @adminrose.update(rose_params)
        format.html { redirect_to adminroses_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminrose }
      else
        format.html { render :edit }
        format.json { render json: @adminrose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @adminrose.destroy
    respond_to do |format|
      format.html { redirect_to adminrose_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_adminrose }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_rose
    @adminrose = Rose.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def rose_params
    params.require(:rose).permit( :title,:content)
  end

end
