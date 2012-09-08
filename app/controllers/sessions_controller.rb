class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      if (user.type == "Kid")
        redirect_to kid_path(user) 
      else
	redirect_to parent_path(user)
      end
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    puts "WOOOOOOOO!"
    puts "at sign out"
    sign_out
    redirect_to root_path
#    redirect_to root_path(@user)
  end
end
