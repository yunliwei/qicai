class Admin::SessionsController < Admin::BaseController
  #登录



  def new

  end

  def create

    admin = Admin.find_by(admin:params[:user_name][:user_name])
    if admin && admin.status==0 && admin.authenticate(params[:user_name][:password])

      redirect_to action: 'new',id:1

    else
      if admin &&  admin.authenticate(params[:user_name][:password])
        session[:name]= 1
        redirect_to peos_path
      else
        redirect_to action: 'new',id:0
      end
    end
  end

end

