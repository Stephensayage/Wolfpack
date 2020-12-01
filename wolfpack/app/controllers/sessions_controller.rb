class SessionsController < ApplicationController

  def new
  end

  def create
    # byebug and then check params to get the info you need
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
      redirect_to root_path
    else 
      flash.now[:error] = "Either the username or password was incorrect"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:sucess] = "You have been logged out"
    redirect_to login_path
  end

end
