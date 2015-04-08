class PostsController < ApplicationController

	def index
		@posts = Post.all	
	end
	
	def show
		@post  = Post.find(params[:id])
		@post.view+=1
		@post.save
	end
	
	def	new
		@post = Post.new
		@category = Category.all
	end
	
	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to posts_path, :notice => "əlavə olundu" 
		else
			render 'new'
		end
		
	end
	
	def edit
		@post  = Post.find(params[:id])
	end
	
	def update
		@post = Post.find(params[:id])
  		if @post.update_attributes(post_params)
  			flash[:notice] = "Düzəldi"
  			redirect_to(:action => 'show', :id => @post.id) 
  		else
  			render 'edit'
  		end
  			
   
	end
	
	def destroy
		@post  = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end
	
#	def get_post
#		@post  = Post.find(params[:id])
#	end
	
	private
	
  	def post_params
    	params.require(:post).permit(:id, :title, :body, :image, :category_id, :author_id, :featured, :created_at)
  	end
	
end
