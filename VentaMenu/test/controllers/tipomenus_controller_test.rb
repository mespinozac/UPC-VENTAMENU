require 'test_helper'

class TipomenusControllerTest < ActionController::TestCase
  setup do
    @tipomenu = tipomenus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipomenus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipomenu" do
    assert_difference('Tipomenu.count') do
      post :create, tipomenu: { nombre: @tipomenu.nombre }
    end

    assert_redirected_to tipomenu_path(assigns(:tipomenu))
  end

  test "should show tipomenu" do
    get :show, id: @tipomenu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipomenu
    assert_response :success
  end

  test "should update tipomenu" do
    patch :update, id: @tipomenu, tipomenu: { nombre: @tipomenu.nombre }
    assert_redirected_to tipomenu_path(assigns(:tipomenu))
  end

  test "should destroy tipomenu" do
    assert_difference('Tipomenu.count', -1) do
      delete :destroy, id: @tipomenu
    end

    assert_redirected_to tipomenus_path
  end
end
