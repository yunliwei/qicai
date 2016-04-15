class NewsController < ApplicationController
  before_action :set_new, only: [:show, :edit, :update, :destroy]
  def index
    @news= New.all


  end

  # GET /tests/1
  # GET /tests/1.json
  def show

  end

  # GET /tests/new
  def new
    @new =New.new

  end

  # GET /tests/1/edit
  def edit

  end

  # POST /tests
  # POST /tests.json
  def create
    @new = New.new(new_params)

    respond_to do |format|
      if @new.save
        format.html { redirect_to adminnews_path, notice: 'Test was successfully created.' }
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
        format.json { render json: @adminnew.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @new.destroy
    respond_to do |format|
      format.html { redirect_to adminwenhuas_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_adminnew }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_new
    @new = New.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def new_params
    params.require(:new).permit( :title,:content)
  end

end


