class HomeController < ApplicationController
  def index
  end

  def hello
  	@id = params[:id]
  	@other = params[:other]
  end

  def about
  	# Render about page
  end
end
