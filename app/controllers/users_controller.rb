class UsersController < ApplicationController
  
  #signup formm	
  def new
  	@user = User.new
    @title = "SignUp"
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		session[:user_id] = @user.id
  		redirect_to "/" #"session#dashboard"
  	else
  		flash[:notice] = "Data Entered is Invalid!"
  		render "new"
  	end
  end

end
