class CartaController < ApplicationController
  before_action :set_cartum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @carta = Cartum.all
    respond_with(@carta)
  end

  def show
    respond_with(@cartum)
  end

  def new
    @cartum = Cartum.new
    respond_with(@cartum)
  end

  def edit
  end

  def create
    @cartum = Cartum.new(cartum_params)
    @cartum.save
    respond_with(@cartum)
  end

  def update
    @cartum.update(cartum_params)
    respond_with(@cartum)
  end

  def destroy
    @cartum.destroy
    respond_with(@cartum)
  end

  private
    def set_cartum
      @cartum = Cartum.find(params[:id])
    end

    def cartum_params
      params.require(:cartum).permit(:descripcion, :fecha, :estado, :precio, :local_id, :tipomenu_id)
    end
end
