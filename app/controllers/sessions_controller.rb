class SessionsController < ApplicationController
	
	def index
		#render :template => "home/index" # to test the posts while user logged in
		# Render wellcome page as stated in the routes file
	end

	def new
		# Render Login page as stated in the routes file
	end

	def create # Called from Facebook auth callback
		if env["omniauth.auth"].present?
			puts env["omniauth.auth"].present?
			user = User.from_omniauth(env["omniauth.auth"])
			sign_in(user)
			#session[:user_id] = user.id
			redirect_to '/' # Change to dashboard page
		else
			user = User.authenticate(params[:session][:email], params[:session][:password])

			if user.nil?
				flash.now[:notice] = "Invalid Email/Password Combination!"
				render "new"
			else
				sign_in(user)
				redirect_to "/" # Redirect to dashboard page
			end
		end
	end

	def destroy # Called when user sign out
		sign_out
		#session[:user_id] = nil
		redirect_to "/"
	end
end
