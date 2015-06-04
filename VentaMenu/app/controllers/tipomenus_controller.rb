class TipomenusController < ApplicationController
  before_action :set_tipomenu, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tipomenus = Tipomenu.all
    respond_with(@tipomenus)
  end

  def show
    respond_with(@tipomenu)
  end

  def new
    @tipomenu = Tipomenu.new
    respond_with(@tipomenu)
  end

  def edit
  end

  def create
    @tipomenu = Tipomenu.new(tipomenu_params)
    @tipomenu.save
    respond_with(@tipomenu)
  end

  def update
    @tipomenu.update(tipomenu_params)
    respond_with(@tipomenu)
  end

  def destroy
    @tipomenu.destroy
    respond_with(@tipomenu)
  end

  private
    def set_tipomenu
      @tipomenu = Tipomenu.find(params[:id])
    end

    def tipomenu_params
      params.require(:tipomenu).permit(:nombre)
    end
end
