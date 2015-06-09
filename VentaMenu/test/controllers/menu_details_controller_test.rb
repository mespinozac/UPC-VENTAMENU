require 'test_helper'

class MenuDetailsControllerTest < ActionController::TestCase
  setup do
    @menu_detail = menu_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_detail" do
    assert_difference('MenuDetail.count') do
      post :create, menu_detail: { food_id: @menu_detail.food_id, menu_id: @menu_detail.menu_id, status: @menu_detail.status, typeFood_id: @menu_detail.typeFood_id }
    end

    assert_redirected_to menu_detail_path(assigns(:menu_detail))
  end

  test "should show menu_detail" do
    get :show, id: @menu_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_detail
    assert_response :success
  end

  test "should update menu_detail" do
    patch :update, id: @menu_detail, menu_detail: { food_id: @menu_detail.food_id, menu_id: @menu_detail.menu_id, status: @menu_detail.status, typeFood_id: @menu_detail.typeFood_id }
    assert_redirected_to menu_detail_path(assigns(:menu_detail))
  end

  test "should destroy menu_detail" do
    assert_difference('MenuDetail.count', -1) do
      delete :destroy, id: @menu_detail
    end

    assert_redirected_to menu_details_path
  end
end
