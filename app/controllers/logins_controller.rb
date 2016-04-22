class LoginsController < ApplicationController


  def new
    adm= Admin.all
    if adm.count==0
      Admin.create(user_name:'admin',password:'admin')
    end
  end

  def create

    admin = Admin.find_by(user_name:params[:login][:user_name])

      if admin &&  admin.authenticate(params[:login][:password])
        session[:name]= admin.user_name
redirect_to sides_path
      else
        redirect_to action: 'new',id:0

    end
  end








end


