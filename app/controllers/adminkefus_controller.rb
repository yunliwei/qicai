class AdminkefusController < ApplicationController
  before_action :set_adminkefu, only: [:show, :edit, :update, :destroy]
  def index

    @adminkefus= Kefu.all


  end

  # GET /tests/1
  # GET /tests/1.json
  def show

  end

  # GET /tests/new
  def new
    @adminkefu = Kefu.new

  end

  # GET /tests/1/edit
  def edit

  end

  # POST /tests
  # POST /tests.json
  def create
    @adminkefu = Kefu.new(adminkefu_params)

    respond_to do |format|
      if @adminkefu.save
        format.html { redirect_to adminkefu_path(@adminkefu),notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @adminkefu }
      else
        format.html { render :new }
        format.json { render json: @adminkefu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @adminkefu.update(adminkefus_paths)
        format.html { redirect_to adminkefus_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminkefu }
      else
        format.html { render :edit }
        format.json { render json: @adminkefus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @adminkefu.destroy
    respond_to do |format|
      format.html { redirect_to adminkefus_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_adminkefu }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_adminkefu
    @adminkefu = Kefu.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def adminkefu_params
    params.require(:adminkefu).permit( :kefuqq,:kefutel)
  end
end
