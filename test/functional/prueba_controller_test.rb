require 'test_helper'

class PruebaControllerTest < ActionController::TestCase
  test "should get saludar" do
    get :saludar
    assert_response :success
  end

end
