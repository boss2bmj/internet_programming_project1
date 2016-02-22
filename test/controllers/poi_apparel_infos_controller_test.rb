require 'test_helper'

class PoiApparelInfosControllerTest < ActionController::TestCase
  setup do
    @poi_apparel_info = poi_apparel_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poi_apparel_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poi_apparel_info" do
    assert_difference('PoiApparelInfo.count') do
      post :create, poi_apparel_info: { description: @poi_apparel_info.description, image_url: @poi_apparel_info.image_url, price: @poi_apparel_info.price, stock: @poi_apparel_info.stock, title_name: @poi_apparel_info.title_name }
    end

    assert_redirected_to poi_apparel_info_path(assigns(:poi_apparel_info))
  end

  test "should show poi_apparel_info" do
    get :show, id: @poi_apparel_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poi_apparel_info
    assert_response :success
  end

  test "should update poi_apparel_info" do
    patch :update, id: @poi_apparel_info, poi_apparel_info: { description: @poi_apparel_info.description, image_url: @poi_apparel_info.image_url, price: @poi_apparel_info.price, stock: @poi_apparel_info.stock, title_name: @poi_apparel_info.title_name }
    assert_redirected_to poi_apparel_info_path(assigns(:poi_apparel_info))
  end

  test "should destroy poi_apparel_info" do
    assert_difference('PoiApparelInfo.count', -1) do
      delete :destroy, id: @poi_apparel_info
    end

    assert_redirected_to poi_apparel_infos_path
  end
end
