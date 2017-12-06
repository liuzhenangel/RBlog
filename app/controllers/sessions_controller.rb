class SessionsController < ApplicationController
  layout false
  def new
  end

  def create
    if params[:session][:username] == ENV['USERNAME'] && params[:session][:password] == ENV['PASSWORD']
      session[:login] = true
      flash[:notic] = '登录成功'
      redirect_to admin_root_path
    else
      flash.now[:error] = '用户名或密码错误'
      render 'new'
    end
  end

  def destroy
    session[:login] = false
    flash[:notic] = '退出成功'
    redirect_to new_session_path
  end
end
