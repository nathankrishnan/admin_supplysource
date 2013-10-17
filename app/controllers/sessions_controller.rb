class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:session][:email], params[:session][:password])
  	if user
  		session[:user_id] = user.id
      flash[:success] = "Logged in!"
  		redirect_to root_url
  	else
  		flash.now[:danger] = "Invalid email or password"
  		render 'new'
  	end
  end

  def destroy
  	# clear the user_id session
  	session[:user_id] = nil
    flash[:success] = "Logged out!"
  	redirect_to root_url

  end

end
