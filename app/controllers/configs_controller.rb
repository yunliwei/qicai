class ConfigsController < ApplicationController
  before_action :set_config, only: [:show, :edit, :update, :destroy]
  def index
    @configs = Config.all
    if @configs.count > 0
      @config=Config.first
      redirect_to edit_config_path(@config)
    else
      Config.create(title:'title',tel:'0877-1234567',mail:'examp@mail.com',address:'address')
      @config=Config.first
      redirect_to @config
    end

  end





  def show
  end

  # GET /tests/new
  def new
    @config = Config.new
  end

  # GET /tests/1/edit
  def edit
  end



  # POST /tests
  # POST /tests.json
  def create
    @config = Config.new(config_params)

    respond_to do |format|
      if @config.save
        format.html { redirect_to configs_path, notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @config }
      else
        format.html { render :new }
        format.json { render json: @config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @config.update(config_params)
        format.html { redirect_to @config, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @config }
      else
        format.html { render :edit }
        format.json { render json: @config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @config.destroy
    respond_to do |format|
      format.html { redirect_to configs_path, notice: '记录已经删除!' }
      format.json { head :no_content }
    end
  end





  private
  # Use callbacks to share common setup or constraints between actions.
  def set_config
    @config = Config.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def config_params
    params.require(:config).permit(:tel,:qq, :address, :beian, :mail, :logo)
  end
end
