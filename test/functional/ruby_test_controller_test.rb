require 'test_helper'

class RubyTestControllerTest < ActionController::TestCase
  test "should get ejemplos" do
    get :ejemplos
    assert_response :success
  end

end
