require 'test_helper'

class PedidodetallesControllerTest < ActionController::TestCase
  setup do
    @pedidodetalle = pedidodetalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidodetalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedidodetalle" do
    assert_difference('Pedidodetalle.count') do
      post :create, pedidodetalle: { estado: @pedidodetalle.estado, menu_id: @pedidodetalle.menu_id, pedido_id: @pedidodetalle.pedido_id }
    end

    assert_redirected_to pedidodetalle_path(assigns(:pedidodetalle))
  end

  test "should show pedidodetalle" do
    get :show, id: @pedidodetalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedidodetalle
    assert_response :success
  end

  test "should update pedidodetalle" do
    patch :update, id: @pedidodetalle, pedidodetalle: { estado: @pedidodetalle.estado, menu_id: @pedidodetalle.menu_id, pedido_id: @pedidodetalle.pedido_id }
    assert_redirected_to pedidodetalle_path(assigns(:pedidodetalle))
  end

  test "should destroy pedidodetalle" do
    assert_difference('Pedidodetalle.count', -1) do
      delete :destroy, id: @pedidodetalle
    end

    assert_redirected_to pedidodetalles_path
  end
end
