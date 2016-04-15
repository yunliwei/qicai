class AdminnewsController < ApplicationController
  before_action :set_adminnew, only: [:show, :edit, :update, :destroy]
  def index

    @adminnews= New.all


  end

  # GET /tests/1
  # GET /tests/1.json
  def show

  end

  # GET /tests/new
  def new
    @adminnew =New.new

  end

  # GET /tests/1/edit
  def edit

  end

  # POST /tests
  # POST /tests.json
  def create
    @adminnew = New.new(adminnew_params)

    respond_to do |format|
      if @adminnew.save
        format.html { redirect_to adminwenhua_path(@adminnew),notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @adminnew }
      else
        format.html { render :new }
        format.json { render json: @adminnew.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @adminnew.update(adminnews_paths)
        format.html { redirect_to adminnews_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminnew }
      else
        format.html { render :edit }
        format.json { render json: @adminnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @adminnew.destroy
    respond_to do |format|
      format.html { redirect_to adminnews_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_adminnew }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_adminnew
    @adminnew = New.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def adminnew_params
    params.require(:new).permit( :title,:content)
  end

end


