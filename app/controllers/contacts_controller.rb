class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]


  # GET /tests
  # GET /tests.json
  def index
    @contacts = Contact.all

  end

  # GET /tests/1
  # GET /tests/1.json
  def show
  end

  # GET /tests/new
  def new
    @contact = Contact.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create

    Contact.create(name:params[:name],title:params[:title],content:params[:content],tel:params[:tel])
    flash[:success] = "谢谢您对公司的关注，我们会尽快处理您的留言!"
    redirect_to contacts_path
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_path, notice: 'Test was successfully destroyed.' }
      format.json { head :no_contact }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_contact
    @contact = Contact.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def contact_params
    params.require(:contact).permit(:name, :title, :tel, :content)
  end

end









