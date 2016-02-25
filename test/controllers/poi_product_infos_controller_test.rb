# == Schema Information
#
# Table name: poi_product_infos
#
#  id                   :integer          not null, primary key
#  detailed_description :text
#  product_id           :integer
#  poi_info_id          :integer
#  poi_info_type        :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_poi_product_infos_on_poi_info_id    (poi_info_id)
#  index_poi_product_infos_on_poi_info_type  (poi_info_type)
#  index_poi_product_infos_on_product_id     (product_id)
#

require 'test_helper'

class PoiProductInfosControllerTest < ActionController::TestCase
  setup do
    @poi_product_info = poi_product_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poi_product_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poi_product_info" do
    assert_difference('PoiProductInfo.count') do
      post :create, poi_product_info: { detailed_description: @poi_product_info.detailed_description, poi_info_id: @poi_product_info.poi_info_id, poi_info_type: @poi_product_info.poi_info_type, product_id: @poi_product_info.product_id }
    end

    assert_redirected_to poi_product_info_path(assigns(:poi_product_info))
  end

  test "should show poi_product_info" do
    get :show, id: @poi_product_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poi_product_info
    assert_response :success
  end

  test "should update poi_product_info" do
    patch :update, id: @poi_product_info, poi_product_info: { detailed_description: @poi_product_info.detailed_description, poi_info_id: @poi_product_info.poi_info_id, poi_info_type: @poi_product_info.poi_info_type, product_id: @poi_product_info.product_id }
    assert_redirected_to poi_product_info_path(assigns(:poi_product_info))
  end

  test "should destroy poi_product_info" do
    assert_difference('PoiProductInfo.count', -1) do
      delete :destroy, id: @poi_product_info
    end

    assert_redirected_to poi_product_infos_path
  end
end
