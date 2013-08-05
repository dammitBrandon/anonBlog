class SessionsController < ApplicationController

  def new
  end

  def create

    user = User.find_by_username(params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      session[:id] = user.id
      redirect_to user_path(user)
    else
      redirect_to signin_url, :notice => "error"
    end
  end

  def destroy
    session.clear
    redirect_to signin_path
  end

end
