class AuthorsController < ApplicationController
  def index
  	@authors = Author.all
  end

  def show
  	@author = Author.find(params[:id])
  	@posts = @author.posts.paginate(:page => params[:page], :per_page => 10)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
	
  	def auth_params
    	params.require(:author).permit(:id, :fullname, :image, :email)
  	end

  
end
