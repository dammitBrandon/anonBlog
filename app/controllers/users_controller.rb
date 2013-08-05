class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
                 
    if @user.save
      session[:id] = @user.id
      redirect_to user_url(@user)
    else
      #go back to form and show errors
      render 'new'
    end
  end
end
