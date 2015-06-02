class CiudadsController < ApplicationController
  before_action :set_ciudad, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ciudads = Ciudad.all
    respond_with(@ciudads)
  end

  def show
    respond_with(@ciudad)
  end

  def new
    @ciudad = Ciudad.new
    respond_with(@ciudad)
  end

  def edit
  end

  def create
    @ciudad = Ciudad.new(ciudad_params)
    @ciudad.save
    respond_with(@ciudad)
  end

  def update
    @ciudad.update(ciudad_params)
    respond_with(@ciudad)
  end

  def destroy
    @ciudad.destroy
    respond_with(@ciudad)
  end

  private
    def set_ciudad
      @ciudad = Ciudad.find(params[:id])
    end

    def ciudad_params
      params.require(:ciudad).permit(:nombre)
    end
end
