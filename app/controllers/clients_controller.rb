class ClientsController < ApplicationController

  def index
  @pagy, @clients = pagy(Client.all)
  end

  def show
  end

  def full
    @clients = Client.all
    respond_to do |format|
      format.xlsx
    end
  end
end
