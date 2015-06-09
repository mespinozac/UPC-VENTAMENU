class TypeFoodsController < ApplicationController
  before_action :set_type_food, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @type_foods = TypeFood.all
    respond_with(@type_foods)
  end

  def show
    respond_with(@type_food)
  end

  def new
    @type_food = TypeFood.new
    respond_with(@type_food)
  end

  def edit
  end

  def create
    @type_food = TypeFood.new(type_food_params)
    @type_food.save
    respond_with(@type_food)
  end

  def update
    @type_food.update(type_food_params)
    respond_with(@type_food)
  end

  def destroy
    @type_food.destroy
    respond_with(@type_food)
  end

  private
    def set_type_food
      @type_food = TypeFood.find(params[:id])
    end

    def type_food_params
      params.require(:type_food).permit(:name, :typeMenu_id)
    end
end
