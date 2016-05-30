class AdminframesController < ApplicationController
  before_action :set_adminframe, only: [:show, :edit, :update, :destroy]
  def index

    @adminframes= Frame.all


  end

  # GET /tests/1
  # GET /tests/1.json
  def show

  end

  # GET /tests/new
  def new
    @adminframe = Frame.new

  end

  # GET /tests/1/edit
  def edit

  end

  # POST /tests
  # POST /tests.json
  def create
    @adminframe = Frame.new(adminframe_params)

    respond_to do |format|
      if @adminframe.save
        format.html { redirect_to adminframe_path(@adminframe),notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @adminframe }
      else
        format.html { render :new }
        format.json { render json: @adminframe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @adminframe.update(adminframes_paths)
        format.html { redirect_to adminframes_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminframe }
      else
        format.html { render :edit }
        format.json { render json: @adminframes.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @adminframe.destroy
    respond_to do |format|
      format.html { redirect_to adminframes_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_adminframe }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_adminframe
    @adminframe = Frame.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def adminframe_params
    params.require(:frame).permit( :ftitle,:fcontent)
  end

end
