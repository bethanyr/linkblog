class LinksController < ApplicationController
  def index
  end
  def new
  	@link = Link.new
  end
  def create
  	@link = Link.new(params[:link])
  	if @link.save
  		flash[:notice] = "Link added"
  		redirect_to @link
  	else

  	end
  end

  def show
    @link = Link.find(params[:id])
  end

end
