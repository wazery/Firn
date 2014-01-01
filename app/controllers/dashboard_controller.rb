class DashboardController < ApplicationController
	def index
		#grapth = Koala::Facebook::GraphAPI.new(@facebook_cookies["access_token"])
		##graph = Koala::Facebook::GraphAPI.new("CAACEdEose0cBAMZA9apgCPg73I8rITMCnR4U0UimlsUjZB64A4GzCA5EBwfvhP4xZAoCrYuwkW2aCOiSHdU2ssAaUZBAzR6oMkoFq5QAzZCZASZATqcfbAyEhAAlmCsfv8N92ZAEZAux68TQOZCzCBMo8PEYbKFwyZBKZAHX5opgt9FKkZAgVE4Y5SH6rWFvWVY8QbVUZD")
		#@posts = graph.get_connections("me", "feed")
		##@posts = params[:page] ? graph.get_page(params[:page]) : graph.get_connections("me", "feed")
		#render :json => @posts
	end
end
