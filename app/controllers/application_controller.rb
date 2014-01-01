class ApplicationController < ActionController::Base
  protect_from_forgery

  include SessionsHelper

  def facebook_cookies
    @facebook_cookies ||= Koala::Facebook::OAuth.new(ENV['FB_APP_ID'], ENV['FB_APP_ID']).get_user_info_from_cookie(cookies)
  end
#private

	#def current_user
		#@current_user ||= User.find(session[:user_id]) if session[:user_id]
	#end
	#helper_method :current_user

end
