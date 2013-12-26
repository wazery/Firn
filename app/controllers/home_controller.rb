class HomeController < ApplicationController
  def index
  end

  def hello
  	@id = params[:id]
  	@other = params[:other]
  end

end
