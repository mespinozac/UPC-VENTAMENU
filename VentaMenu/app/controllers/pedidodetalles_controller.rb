class PedidodetallesController < ApplicationController
  before_action :set_pedidodetalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pedidodetalles = Pedidodetalle.all
    respond_with(@pedidodetalles)
  end

  def show
    respond_with(@pedidodetalle)
  end

  def new
    @pedidodetalle = Pedidodetalle.new
    respond_with(@pedidodetalle)
  end

  def edit
  end

  def create
    @pedidodetalle = Pedidodetalle.new(pedidodetalle_params)
    @pedidodetalle.save
    respond_with(@pedidodetalle)
  end

  def update
    @pedidodetalle.update(pedidodetalle_params)
    respond_with(@pedidodetalle)
  end

  def destroy
    @pedidodetalle.destroy
    respond_with(@pedidodetalle)
  end

  private
    def set_pedidodetalle
      @pedidodetalle = Pedidodetalle.find(params[:id])
    end

    def pedidodetalle_params
      params.require(:pedidodetalle).permit(:estado, :pedido_id, :menu_id)
    end
end
