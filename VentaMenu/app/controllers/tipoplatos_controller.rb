class TipoplatosController < ApplicationController
  before_action :set_tipoplato, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipoplatos = Tipoplato.all
    respond_with(@tipoplatos)
  end

  def show
    respond_with(@tipoplato)
  end

  def new
    @tipoplato = Tipoplato.new
    respond_with(@tipoplato)
  end

  def edit
  end

  def create
    @tipoplato = Tipoplato.new(tipoplato_params)
    @tipoplato.save
    respond_with(@tipoplato)
  end

  def update
    @tipoplato.update(tipoplato_params)
    respond_with(@tipoplato)
  end

  def destroy
    @tipoplato.destroy
    respond_with(@tipoplato)
  end

  private
    def set_tipoplato
      @tipoplato = Tipoplato.find(params[:id])
    end

    def tipoplato_params
      params.require(:tipoplato).permit(:nombre)
    end
end
