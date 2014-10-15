class ProductCategoriesController < ApplicationController
  def index
    @productcategories = Productcategory.all
  end

  def show
    @productcategory = Productcategory.find(params[:id])
  end

  def new
    @productcategory = Productcategory.new
  end

  def edit
    @productcategory = Productcategory.find(params[:id])
  end

  def create
    @productcategory = Productcategory.new(productcategory_params)

    if @productcategory.save
      redirect_to @productcategory
    else
      render 'new'
    end
  end

  def update
    @productcategory = Productcategory.find(params[:id])

    if @productcategory.update(productcategory_params)
      redirect_to @productcategory
    else
      render 'edit'
    end
  end

  def destroy
    @productcategory = Productcategory.find(params[:id])
    @productcategory.destroy

    redirect_to product_categories_path
  end

  private
  def productcategory_params
    params.require(:productcategory).permit(:category)
  end
end
