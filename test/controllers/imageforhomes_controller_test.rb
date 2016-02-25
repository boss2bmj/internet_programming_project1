# == Schema Information
#
# Table name: imageforhomes
#
#  id                 :integer          not null, primary key
#  image_name         :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class ImageforhomesControllerTest < ActionController::TestCase
  setup do
    @imageforhome = imageforhomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imageforhomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imageforhome" do
    assert_difference('Imageforhome.count') do
      post :create, imageforhome: { description: @imageforhome.description, image_name: @imageforhome.image_name }
    end

    assert_redirected_to imageforhome_path(assigns(:imageforhome))
  end

  test "should show imageforhome" do
    get :show, id: @imageforhome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imageforhome
    assert_response :success
  end

  test "should update imageforhome" do
    patch :update, id: @imageforhome, imageforhome: { description: @imageforhome.description, image_name: @imageforhome.image_name }
    assert_redirected_to imageforhome_path(assigns(:imageforhome))
  end

  test "should destroy imageforhome" do
    assert_difference('Imageforhome.count', -1) do
      delete :destroy, id: @imageforhome
    end

    assert_redirected_to imageforhomes_path
  end
end
