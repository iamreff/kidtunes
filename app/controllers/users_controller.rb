class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to kidtunes!"
      puts @user.type
      if (@user.type == "Kid")
        redirect_to kid_path(@user) 
      else
	redirect_to parent_path(@user)
      end
    else
      render 'new'
    end
  end
end
