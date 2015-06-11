class MenuDetailsController < ApplicationController
  before_action :set_menu_detail, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @menu_details = MenuDetail.all
    respond_with(@menu_details)
  end

  def show
    respond_with(@menu_detail)
  end

  def new
    @menu_detail = MenuDetail.new
    respond_with(@menu_detail)
  end

  def edit
  end

  def create
    @menu_detail = MenuDetail.new(menu_detail_params)
    @menu_detail.save
    respond_with(@menu_detail)
  end

  def update
    @menu_detail.update(menu_detail_params)
    respond_with(@menu_detail)
  end

  def destroy
    @menu_detail.destroy
    respond_with(@menu_detail)
  end

  private
    def set_menu_detail
      @menu_detail = MenuDetail.find(params[:id])
    end

    def menu_detail_params
      params.require(:menu_detail).permit(:status, :menu_id, :food_id, :typeFood_id)
    end
end
