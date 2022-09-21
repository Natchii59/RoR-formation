class CategoriesController < ApplicationController

  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all

    respond_to do |format|
      format.html
      format.json { render json: @categories }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json { render json: @category }
    end
  end

  def edit
  end

  def update
    if @category.update category_params
      redirect_to categories_path, flash: { success: "Catégorie modifiée avec succès" }
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, flash: { success: "Catégorie supprimée avec succès" }
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create category_params
    if !@category.errors.any?
      redirect_to category_path(@category.id), flash: { success: "Catégorie créée avec succès" }
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :slug)
  end

  def set_category
    @category = Category.find params[:id]
  end

end
