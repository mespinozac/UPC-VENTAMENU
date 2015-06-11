class TypeMenusController < ApplicationController
  before_action :set_type_menu, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @type_menus = TypeMenu.all
    respond_with(@type_menus)
  end

  def show
    respond_with(@type_menu)
  end

  def new
    @type_menu = TypeMenu.new
    respond_with(@type_menu)
  end

  def edit
  end

  def create
    @type_menu = TypeMenu.new(type_menu_params)
    @type_menu.save
    respond_with(@type_menu)
  end

  def update
    @type_menu.update(type_menu_params)
    respond_with(@type_menu)
  end

  def destroy
    @type_menu.destroy
    respond_with(@type_menu)
  end

  private
    def set_type_menu
      @type_menu = TypeMenu.find(params[:id])
    end

    def type_menu_params
      params.require(:type_menu).permit(:name)
    end
end
