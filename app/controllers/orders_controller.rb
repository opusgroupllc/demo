# require "prawn"
class OrdersController < ApplicationController
 # Generates a PDF document with information on the orders and
 # returns it. The users will get the PDF as a file download.
 def index
   @orders = Order.all
 end

 def show
   @order = Order.find(params[:id])

   respond_to do |format|
     format.html
     format.pdf { render pdf: generate_pdf(@order) }
   end
 end

 def new
   @order = Order.new
 end

 def edit

 end

 def create

 end

 def update
   @order = Order.find(params[:id])
   if @order.update(order_params)
     redirect_to(@order)
   else
     render 'edit'
   end
 end

 def destroy

 end
 # def download_pdf
     # order = Order.find(params[:id])
     # send_data generate_pdf(order),
                 # filename:  "#{order.name}.pdf"
                 # type: "application/pdf"
 # end

  private
    def generate_pdf(client)
      # Prawn::Document.new do
      #  text order.name, align: :center
      #  text "Customer: #{customer.name}"
      #  text "Address: #{customer.address}"
      #  text "Email: #{customer.email}"
      # end.render
    end

end
