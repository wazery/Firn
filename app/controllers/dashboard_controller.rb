class DashboardController < ApplicationController
	def index
		#grapth = Koala::Facebook::GraphAPI.new(@facebook_cookies["access_token"])
		graph = Koala::Facebook::GraphAPI.new("CAACEdEose0cBAO1oZAcSLX0OiM6itQfTOXC8tLoWTb7KZASihxNeO8UVhHZBVlEAtMe0gXnlPmKF89FT072sIDZBwtVfbMmbXZA9lezZANmUKfmFTr9tvUSVdASw7VurwDnMce0spBu830pe2Fwd4lCYCoLAFgKE9I6zgJBtieHD03gVGVBsGwOQLqQLTpS9EZD")
		#@posts = graph.get_connections("me", "posts", :fields => "from, story, message, type, link")
		@posts = params[:page] ? graph.get_page(params[:page]) : graph.get_connections("me", "feed", :fields => "from, story, message, type, link")
		#render :json => @posts
	end
end
