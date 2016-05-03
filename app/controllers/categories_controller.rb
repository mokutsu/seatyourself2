class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category  = Category.find(params[:id])
    @restaurants = Restaurant.where(category: @category.id)
  end
end
