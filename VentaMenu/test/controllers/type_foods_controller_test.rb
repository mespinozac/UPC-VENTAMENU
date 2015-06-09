require 'test_helper'

class TypeFoodsControllerTest < ActionController::TestCase
  setup do
    @type_food = type_foods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_foods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_food" do
    assert_difference('TypeFood.count') do
      post :create, type_food: { name: @type_food.name, typeMenu_id: @type_food.typeMenu_id }
    end

    assert_redirected_to type_food_path(assigns(:type_food))
  end

  test "should show type_food" do
    get :show, id: @type_food
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_food
    assert_response :success
  end

  test "should update type_food" do
    patch :update, id: @type_food, type_food: { name: @type_food.name, typeMenu_id: @type_food.typeMenu_id }
    assert_redirected_to type_food_path(assigns(:type_food))
  end

  test "should destroy type_food" do
    assert_difference('TypeFood.count', -1) do
      delete :destroy, id: @type_food
    end

    assert_redirected_to type_foods_path
  end
end
