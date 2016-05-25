class KefusController < ApplicationController
  before_action :set_kefu, only: [:show, :edit, :update, :destroy]
  def index

    @kefus = Kefu.all


    if params[:id].to_i > 0

      @content = Kefu.find(params[:id])

    else
      @content = nil

    end

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



    @kefu = Kefu.new(kefu_params)
    respond_to do |format|
      if @kefu.save
        format.html { redirect_to adminkefus_path, notice: 'Test was successfully created.' }
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
      if @adminkefu.update(kefu_params)
        format.html { redirect_to adminkefus_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminkefu }
      else
        format.html { render :edit }
        format.json { render json: @adminkefu.errors, status: :unprocessable_entity }
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
  def set_kefu
    if params[:id].to_i >0
      @adminkefu = Kefu.find(params[:id])
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def kefu_params
    params.require(:kefu).permit( :kefuqq,:kefutel)
  end

end


