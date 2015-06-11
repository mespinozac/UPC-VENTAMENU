class CusLocalController < ApplicationController
  respond_to :html
  def index
    @locals = Local.all
    respond_with(@locals)
  end
  
  def localmenu
    
    @menus = Menu.joins(:local).where("locals.id=?",params[:name])
    @type_menus = TypeMenu.all
    @menu_details = MenuDetail.joins(:food).joins(:type_food)
    @type_foods = TypeFood.all
    #respond_with(@menus)
  end
end
