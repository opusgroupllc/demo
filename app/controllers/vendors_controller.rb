class VendorsController < ApplicationController
  def index
    @vendors = Vendor.all
  end

  def show

  end

  def new

  end

  def edit

  end

  def create

  end

  def update
    @vendor = Vendor.find(params[:id])
    if @vendor.update(vendor_params)
      redirect_to(@vendor)
    else
      render 'edit'
    end
  end

  def destroy

  end

  private
    def vendor_params
      # params.require(:vendor).permit(:field1, :field2, :field3)
    end
end
