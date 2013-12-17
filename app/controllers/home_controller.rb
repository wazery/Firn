class HomeController < ApplicationController
  def index
  end

  def hello
  	@id = params[:id]
  	@other = params[:other]
  end

  def redirection
  	redirect_to 'http://www.google.com'
  end
end
