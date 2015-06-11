class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
  @idlocal = params[:q]
  if @q
    @menus = Menu.where(:id => @idlocal)
  else
    @menus = Menu.all
   end
    
    respond_with(@menus)
  end

  def show
    respond_with(@menu)
  end

  def new
    @menu = Menu.new
    respond_with(@menu)
  end

  def edit
  end

  def create
    @menu = Menu.new(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu was successfully created.' }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end 
  end 

def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
end 

 
 def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to menu_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
      end
 end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:name, :dateMenu, :status, :price, :local_id)
    end
end 
