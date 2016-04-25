class LoginsController < ApplicationController


  def create
    adm= Admin.all
    if adm.count==0
      Admin.create(user_name:'admin',password:'admin',password_confirmation:'admin')
    end

    admin = Admin.find_by(user_name:params[:login][:user_name])

      if admin &&  admin.authenticate(params[:password])
        session[:name]= admin.user_name
redirect_to sises_path
      else
        redirect_to action: 'new',id:0

    end
  end



end


