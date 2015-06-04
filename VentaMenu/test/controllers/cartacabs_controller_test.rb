require 'test_helper'

class CartacabsControllerTest < ActionController::TestCase
  setup do
    @cartacab = cartacabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartacabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartacab" do
    assert_difference('Cartacab.count') do
      post :create, cartacab: { descripcion: @cartacab.descripcion, estado: @cartacab.estado, fecha: @cartacab.fecha, precio: @cartacab.precio }
    end

    assert_redirected_to cartacab_path(assigns(:cartacab))
  end

  test "should show cartacab" do
    get :show, id: @cartacab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartacab
    assert_response :success
  end

  test "should update cartacab" do
    patch :update, id: @cartacab, cartacab: { descripcion: @cartacab.descripcion, estado: @cartacab.estado, fecha: @cartacab.fecha, precio: @cartacab.precio }
    assert_redirected_to cartacab_path(assigns(:cartacab))
  end

  test "should destroy cartacab" do
    assert_difference('Cartacab.count', -1) do
      delete :destroy, id: @cartacab
    end

    assert_redirected_to cartacabs_path
  end
end
