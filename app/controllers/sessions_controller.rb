class SessionsController < ApplicationController
	
	def index
		#render :template => "home/index" # to test the posts while user logged in
		# Render wellcome page as stated in the routes file
	end

	def new
		# Render Log in page as stated in the routes file
	end

	def create # Called from Facebook auth callback
		user = User.from_omniauth(env["omniauth.auth"])
		session[:user_id] = user.id
		redirect_to root_url # change to dashboard page
	end

	def destroy # Called when user sign out
		session[:user_id] = nil
		redirect_to root_url
	end
end
