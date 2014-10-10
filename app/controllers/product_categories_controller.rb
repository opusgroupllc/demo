class ProductCategoriesController < ApplicationController
  def index
    @productcategories = Productcategory.all
  end

  def new
    @productcategory = Productcategory.new
  end

  def show
    @productcategory = Productcategory.find(params[:id])
  end

  def edit

  end

  def create

  end

  def update

  end


  private
    def productcategory_params

    end

end
