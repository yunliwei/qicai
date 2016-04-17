class AboutsController < ApplicationController
  before_action :set_about, only: [:show, :edit, :update, :destroy]
  def index
    #@adminwenhua= Wenhua.all
    @aboutslefttitle = About.all

    if params[:id]

      @content = About.find(params[:id])

    else
      @content = About.first

    end

  end

  # GET /tests/1
  # GET /tests/1.json
  def show

  end

  # GET /tests/new
  def new
    @adminabout =About.new

  end

  # GET /tests/1/edit
  def edit

  end

  # POST /tests
  # POST /tests.json
  def create
    @about = About.new(about_params)

    respond_to do |format|
      if @about.save
        format.html { redirect_to adminabouts_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @adminabout }
      else
        format.html { render :new }
        format.json { render json: @adminabout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @adminabout.update(about_params)
        format.html { redirect_to adminabouts_path, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @adminabout }
      else
        format.html { render :edit }
        format.json { render json: @adminabout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @adminabout.destroy
    respond_to do |format|
      format.html { redirect_to adminabouts_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_adminabout }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_about
    @adminabout = About.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def about_params
    params.require(:about).permit( :title,:content)
  end

end


