class UsersController < ApplicationController
  
  #signup formm	
  def new
  	@user = User.new
    @title = "SignUp"
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
      sign_in @user
      flash[:success] = "You #{@user.name} successfully logged in"
  		redirect_to "/" #"session#dashboard"
  	else
  		flash.now[:notice] = "Data Entered is Invalid!"
  		render "new"
  	end
  end

end
