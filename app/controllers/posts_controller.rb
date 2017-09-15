class PostsController < ApplicationController
	before_action :get_posts, only: [:index]

	def index
		@post = current_user.posts.build
	end 

	def new
	end 

	def create	
		@post = current_user.posts.new(post_params)
		if @post.save
		  flash[:success] = "oooo shnaaap you created a post"
		  redirect_to posts_path
		else 
		  flash.now[:danger] = "oooo shnaaap the fields cant be empty"	
		  render 'index'
		end   
	end 

	private
	def post_params
		params.require(:post).permit(:title, :comment)
	end 

	def get_posts
		@posts = Post.all 
	end 

end
