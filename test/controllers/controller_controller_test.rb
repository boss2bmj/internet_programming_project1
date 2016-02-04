require 'test_helper'

class ControllerControllerTest < ActionController::TestCase
  test "should get cart" do
    get :cart
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
