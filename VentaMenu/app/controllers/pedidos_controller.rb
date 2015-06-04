class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pedidos = Pedido.all
    respond_with(@pedidos)
  end

  def show
    respond_with(@pedido)
  end

  def new
    @pedido = Pedido.new
    respond_with(@pedido)
  end

  def edit
  end

  def create
    @pedido = Pedido.new(pedido_params)
    @pedido.save
    respond_with(@pedido)
  end

  def update
    @pedido.update(pedido_params)
    respond_with(@pedido)
  end

  def destroy
    @pedido.destroy
    respond_with(@pedido)
  end

  private
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    def pedido_params
      params.require(:pedido).permit(:fecha, :horapedido, :horaentrega, :estado, :montopedido, :cartacab_id)
    end
end
