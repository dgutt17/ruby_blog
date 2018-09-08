class PostsController < ApplicationController
    def index
        # @posts = Post.find_by_sql("Select * from posts")
        @posts = Post.all
    end

    def show
       @post = Post.find(params[:id])
    end

    def new 
        @post = Post.new
        @category = Category.all
    end
    
    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to posts_path, :notice => "Your post has been saved"
        else
            render "new"
        end

    end

    def post_params
        params.require(:post).permit(:title, :body, :category_id)
    end

    def edit

    end

    def update

    end

    def destroy 
    
    end

end
