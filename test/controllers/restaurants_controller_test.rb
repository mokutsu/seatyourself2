require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
