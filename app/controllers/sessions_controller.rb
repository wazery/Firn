class SessionsController < ApplicationController
	
	def new
		#Log in form
	end

	def create
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id
		redirect_to root_url # change to dashboard page
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end
end
