class WenhuasController < ApplicationController
  def index

  end

end
def create
  @wenhua = Adminwenhua.new(wenhua_params)

  respond_to do |format|
    if @wenhua.save
      format.html { redirect_to @wenhua_path, notice: 'Test was successfully created.' }
      format.json { render :show, status: :created, location: @wenhua }
    else
      format.html { render :new }
      format.json { render json: @wenhua.errors, status: :unprocessable_entity }
    end
  end
end