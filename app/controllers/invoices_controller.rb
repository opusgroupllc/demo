class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.(page: params[:page])
  end

  def show

  end

  def new

  end

  def create

  end

  def update
    @invoice = Invoice.find(params[:id])
    if @invioce.update(invoice_params)
      redirect_to(@invoice)
    else
      render 'edit'
    end
  end

  def destroy

  end

  private
    def invoice_params
      # params.require(:invoice).permit(:field1, :field2, :field3)
    end
end
