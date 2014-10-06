class ClientsController < ApplicationController

  def index
    @clients = Client.all
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
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to(@client)
    else
      render 'edit'
    end
  end

  def destroy

  end

  private
    def client_params
      # paramss.require(:client).permit(:field1, :field2, :field3)
    end
end
