# == Schema Information
#
# Table name: poi_racket_infos
#
#  id                 :integer          not null, primary key
#  title_name         :string
#  description        :text
#  image_url          :string
#  shaft              :string
#  weight             :string
#  length             :string
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

class PoiRacketInfosControllerTest < ActionController::TestCase
  setup do
    @poi_racket_info = poi_racket_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poi_racket_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poi_racket_info" do
    assert_difference('PoiRacketInfo.count') do
      post :create, poi_racket_info: { description: @poi_racket_info.description, image_url: @poi_racket_info.image_url, length: @poi_racket_info.length, price: @poi_racket_info.price, shaft: @poi_racket_info.shaft, stock: @poi_racket_info.stock, title_name: @poi_racket_info.title_name, weight: @poi_racket_info.weight }
    end

    assert_redirected_to poi_racket_info_path(assigns(:poi_racket_info))
  end

  test "should show poi_racket_info" do
    get :show, id: @poi_racket_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poi_racket_info
    assert_response :success
  end

  test "should update poi_racket_info" do
    patch :update, id: @poi_racket_info, poi_racket_info: { description: @poi_racket_info.description, image_url: @poi_racket_info.image_url, length: @poi_racket_info.length, price: @poi_racket_info.price, shaft: @poi_racket_info.shaft, stock: @poi_racket_info.stock, title_name: @poi_racket_info.title_name, weight: @poi_racket_info.weight }
    assert_redirected_to poi_racket_info_path(assigns(:poi_racket_info))
  end

  test "should destroy poi_racket_info" do
    assert_difference('PoiRacketInfo.count', -1) do
      delete :destroy, id: @poi_racket_info
    end

    assert_redirected_to poi_racket_infos_path
  end
end
