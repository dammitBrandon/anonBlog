class SessionsController < ApplicationController
  def new
    @user = User.find(session[:id])
  end

  def create
  end

  def destroy
  end

end
