class UsersController < ApplicationController

  #signup formm	
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		session[:user_id] = @user.id
  		redirect_to new_profile_path
  	else
  		flash[:notice] = "Form is invalid!"
  		render "new"
  	end
  end

end
