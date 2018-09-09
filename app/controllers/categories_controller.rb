class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @title = @category.name
    @posts = @category.posts # allows you to get all of the posts with that category - created by associations in the models
  end

  
end
