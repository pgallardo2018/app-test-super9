class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :pdf]

  def index
  @pagy, @clients = pagy(Client.all)
  end

  def show
    #    @client = Client.find(params[:id])
  end

  def full
    @clients = Client.all
    respond_to do |format|
      format.xlsx
    end
  end

  def download
    pdf = Prawn::Document.new
    pdf.text "Hello World"
    send_data(pdf.render,
              filename: "hello.pdf",
              type: "application/pdf")
  end

  def preview
    pdf = Prawn::Document.new
    @clients = Client.all
    @clients.each do |client|
      pdf.text client.name
    end

    send_data(pdf.render,
              filename: "preview.pdf",
              type: "application/pdf",
              disposition: "inline")
  end


  def pdf
    pdf = Prawn::Document.new

    pdf.text @client.name, size: 20, style: :bold, align: :center
    pdf.text @client.rut
    pdf.text @client.description

    send_data(pdf.render,
              filename: "client.pdf",
              type: "application/pdf",
              disposition: "inline")

  end

  private

  def set_client
    @client = Client.find(params[:id])
  end
end
