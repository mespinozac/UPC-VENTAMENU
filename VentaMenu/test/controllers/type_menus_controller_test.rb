require 'test_helper'

class TypeMenusControllerTest < ActionController::TestCase
  setup do
    @type_menu = type_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_menu" do
    assert_difference('TypeMenu.count') do
      post :create, type_menu: { name: @type_menu.name }
    end

    assert_redirected_to type_menu_path(assigns(:type_menu))
  end

  test "should show type_menu" do
    get :show, id: @type_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_menu
    assert_response :success
  end

  test "should update type_menu" do
    patch :update, id: @type_menu, type_menu: { name: @type_menu.name }
    assert_redirected_to type_menu_path(assigns(:type_menu))
  end

  test "should destroy type_menu" do
    assert_difference('TypeMenu.count', -1) do
      delete :destroy, id: @type_menu
    end

    assert_redirected_to type_menus_path
  end
end
