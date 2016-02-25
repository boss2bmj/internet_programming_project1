# == Schema Information
#
# Table name: poi_grips_infos
#
#  id                 :integer          not null, primary key
#  title_name         :string
#  description        :text
#  image_url          :string
#  color              :string
#  price              :integer
#  stock              :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class PoiGripsInfosControllerTest < ActionController::TestCase
  setup do
    @poi_grips_info = poi_grips_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poi_grips_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poi_grips_info" do
    assert_difference('PoiGripsInfo.count') do
      post :create, poi_grips_info: { color: @poi_grips_info.color, description: @poi_grips_info.description, image_url: @poi_grips_info.image_url, price: @poi_grips_info.price, stock: @poi_grips_info.stock, title_name: @poi_grips_info.title_name }
    end

    assert_redirected_to poi_grips_info_path(assigns(:poi_grips_info))
  end

  test "should show poi_grips_info" do
    get :show, id: @poi_grips_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poi_grips_info
    assert_response :success
  end

  test "should update poi_grips_info" do
    patch :update, id: @poi_grips_info, poi_grips_info: { color: @poi_grips_info.color, description: @poi_grips_info.description, image_url: @poi_grips_info.image_url, price: @poi_grips_info.price, stock: @poi_grips_info.stock, title_name: @poi_grips_info.title_name }
    assert_redirected_to poi_grips_info_path(assigns(:poi_grips_info))
  end

  test "should destroy poi_grips_info" do
    assert_difference('PoiGripsInfo.count', -1) do
      delete :destroy, id: @poi_grips_info
    end

    assert_redirected_to poi_grips_infos_path
  end
end
