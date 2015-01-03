class CategoriesController < ApplicationController
  def index
  @category=Category.all
  end

  def show
  @category=Category.find(params[:id])
  end

  def new
  @category=Category.new
  def create
@category=Category.new(category_params)
if @category.save
redirect_to(:action =>'index')
else
render('new')
end
end
  end


  def edit
  end

  def delete
  end
  
  private
  def category_params 
  params.require(:category).permit(:name, :thumburl)
  end
  
end
