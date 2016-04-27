class LoginsController < ApplicationController

def index
  adm= Admin.all
  if adm.count==0
    Admin.create(user_name:'admin',password:'admin',password_confirmation:'admin')
  end
end



  def create












    admin = Admin.find_by(user_name:params[:login][:user_name])
    if admin && admin.authenticate(params[:login][:password])

      redirect_to admins_path

    else
      redirect_to action: 'index',id:0
    end
  end




end


