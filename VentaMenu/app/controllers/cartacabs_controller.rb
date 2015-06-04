class CartacabsController < ApplicationController
  before_action :set_cartacab, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cartacabs = Cartacab.all
    respond_with(@cartacabs)
  end

  def show
    respond_with(@cartacab)
  end

  def new
    @cartacab = Cartacab.new
    respond_with(@cartacab)
  end

  def edit
  end

  def create
    @cartacab = Cartacab.new(cartacab_params)
    @cartacab.save
    respond_with(@cartacab)
  end

  def update
    @cartacab.update(cartacab_params)
    respond_with(@cartacab)
  end

  def destroy
    @cartacab.destroy
    respond_with(@cartacab)
  end

  private
    def set_cartacab
      @cartacab = Cartacab.find(params[:id])
    end

    def cartacab_params
      params.require(:cartacab).permit(:descripcion, :fecha, :estado, :precio)
    end
end
