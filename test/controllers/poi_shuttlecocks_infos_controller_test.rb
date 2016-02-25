# == Schema Information
#
# Table name: poi_shuttlecocks_infos
#
#  id                 :integer          not null, primary key
#  title_name         :string
#  description        :text
#  image_url          :string
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

class PoiShuttlecocksInfosControllerTest < ActionController::TestCase
  setup do
    @poi_shuttlecocks_info = poi_shuttlecocks_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poi_shuttlecocks_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poi_shuttlecocks_info" do
    assert_difference('PoiShuttlecocksInfo.count') do
      post :create, poi_shuttlecocks_info: { description: @poi_shuttlecocks_info.description, image_url: @poi_shuttlecocks_info.image_url, price: @poi_shuttlecocks_info.price, stock: @poi_shuttlecocks_info.stock, title_name: @poi_shuttlecocks_info.title_name }
    end

    assert_redirected_to poi_shuttlecocks_info_path(assigns(:poi_shuttlecocks_info))
  end

  test "should show poi_shuttlecocks_info" do
    get :show, id: @poi_shuttlecocks_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poi_shuttlecocks_info
    assert_response :success
  end

  test "should update poi_shuttlecocks_info" do
    patch :update, id: @poi_shuttlecocks_info, poi_shuttlecocks_info: { description: @poi_shuttlecocks_info.description, image_url: @poi_shuttlecocks_info.image_url, price: @poi_shuttlecocks_info.price, stock: @poi_shuttlecocks_info.stock, title_name: @poi_shuttlecocks_info.title_name }
    assert_redirected_to poi_shuttlecocks_info_path(assigns(:poi_shuttlecocks_info))
  end

  test "should destroy poi_shuttlecocks_info" do
    assert_difference('PoiShuttlecocksInfo.count', -1) do
      delete :destroy, id: @poi_shuttlecocks_info
    end

    assert_redirected_to poi_shuttlecocks_infos_path
  end
end
