require 'test_helper'

class CartadetallesControllerTest < ActionController::TestCase
  setup do
    @cartadetalle = cartadetalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartadetalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartadetalle" do
    assert_difference('Cartadetalle.count') do
      post :create, cartadetalle: { cartacab_id: @cartadetalle.cartacab_id, estado: @cartadetalle.estado, menu_id: @cartadetalle.menu_id }
    end

    assert_redirected_to cartadetalle_path(assigns(:cartadetalle))
  end

  test "should show cartadetalle" do
    get :show, id: @cartadetalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartadetalle
    assert_response :success
  end

  test "should update cartadetalle" do
    patch :update, id: @cartadetalle, cartadetalle: { cartacab_id: @cartadetalle.cartacab_id, estado: @cartadetalle.estado, menu_id: @cartadetalle.menu_id }
    assert_redirected_to cartadetalle_path(assigns(:cartadetalle))
  end

  test "should destroy cartadetalle" do
    assert_difference('Cartadetalle.count', -1) do
      delete :destroy, id: @cartadetalle
    end

    assert_redirected_to cartadetalles_path
  end
end
