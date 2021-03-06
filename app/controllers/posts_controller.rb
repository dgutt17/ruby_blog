class PostsController < ApplicationController
    def index
        # @posts = Post.find_by_sql("Select * from posts")
        @q = Post.ransack(params[:q])
        @posts = @q.result(distinct: true)
    end

    def show
       @post = Post.find(params[:id])
       @user = AdminUser.all
       @comment = Comment.new(:post => @post)
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
        params.require(:post).permit(:title, :body, :category_id, :admin_user_id)
    end

    def edit
        @post = Post.find(params[:id])
        @category = Category.all
    end

    def update
        @post = Post.find(params[:id])
        if @post.update_attributes(update_params)
            redirect_to post_path, :notice => "Your post has been updated"
        else
            render "edit"
        end
    
    end

    def update_params
        params.require(:post).permit(:title, :body, :category_id, :admin_user_id)
    end

    def destroy 
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path, :notice => "Your post has been deleted"
    
    end

end
