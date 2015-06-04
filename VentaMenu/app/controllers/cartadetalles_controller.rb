class CartadetallesController < ApplicationController
  before_action :set_cartadetalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cartadetalles = Cartadetalle.all
    respond_with(@cartadetalles)
  end

  def show
    respond_with(@cartadetalle)
  end

  def new
    @cartadetalle = Cartadetalle.new
    respond_with(@cartadetalle)
  end

  def edit
  end

  def create
    @cartadetalle = Cartadetalle.new(cartadetalle_params)
    @cartadetalle.save
    respond_with(@cartadetalle)
  end

  def update
    @cartadetalle.update(cartadetalle_params)
    respond_with(@cartadetalle)
  end

  def destroy
    @cartadetalle.destroy
    respond_with(@cartadetalle)
  end

  private
    def set_cartadetalle
      @cartadetalle = Cartadetalle.find(params[:id])
    end

    def cartadetalle_params
      params.require(:cartadetalle).permit(:estado, :cartacab_id, :menu_id)
    end
end
