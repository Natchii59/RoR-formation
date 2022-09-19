class CategoriesController < ApplicationController

  before_action do |controller|
    puts "Je suis avant l'action"
  end

  after_action do |controller|
    puts "Je suis après l'action"
  end

  around_action :around

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find params[:id]
  end

  def edit
    @category = Category.find params[:id]
  end

  def update
    category = Category.find params[:id]

    category.update category_params

    redirect_to categories_path
  end

  def destroy
    category = Category.find params[:id]
    category.destroy
    redirect_to categories_path
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create category_params
    redirect_to category_path category.id
  end

  private

  def category_params
    params.require(:category).permit(:name, :slug)
  end

  def around
    puts "aaa"
    yield
    puts "zzz"
  end

end
