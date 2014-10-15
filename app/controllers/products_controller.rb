class ProductsController < ApplicationController
  def create
    @productcategory = Productcategory.find(params[:productcategory_id])
    @product = @productcategory.products.create(product_params)
    redirect_to product_category_path(@productcategory)
  end

  def destroy
    @productcategory = Productcategory.find(params[:productcategory_id])
    @product = @productcategory.products.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:name)
  end
end
