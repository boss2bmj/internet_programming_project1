# == Schema Information
#
# Table name: poi_string_infos
#
#  id                 :integer          not null, primary key
#  title_name         :string
#  description        :text
#  image_url          :string
#  guage              :string
#  length             :string
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

class PoiStringInfosControllerTest < ActionController::TestCase
  setup do
    @poi_string_info = poi_string_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poi_string_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poi_string_info" do
    assert_difference('PoiStringInfo.count') do
      post :create, poi_string_info: { color: @poi_string_info.color, description: @poi_string_info.description, guage: @poi_string_info.guage, image_url: @poi_string_info.image_url, length: @poi_string_info.length, price: @poi_string_info.price, stock: @poi_string_info.stock, title_name: @poi_string_info.title_name }
    end

    assert_redirected_to poi_string_info_path(assigns(:poi_string_info))
  end

  test "should show poi_string_info" do
    get :show, id: @poi_string_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poi_string_info
    assert_response :success
  end

  test "should update poi_string_info" do
    patch :update, id: @poi_string_info, poi_string_info: { color: @poi_string_info.color, description: @poi_string_info.description, guage: @poi_string_info.guage, image_url: @poi_string_info.image_url, length: @poi_string_info.length, price: @poi_string_info.price, stock: @poi_string_info.stock, title_name: @poi_string_info.title_name }
    assert_redirected_to poi_string_info_path(assigns(:poi_string_info))
  end

  test "should destroy poi_string_info" do
    assert_difference('PoiStringInfo.count', -1) do
      delete :destroy, id: @poi_string_info
    end

    assert_redirected_to poi_string_infos_path
  end
end
