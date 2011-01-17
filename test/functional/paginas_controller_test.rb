require 'test_helper'

class PaginasControllerTest < ActionController::TestCase
  test "should get contacto" do
    get :contacto
    assert_response :success
  end

  test "should get datos" do
    get :datos
    assert_response :success
  end

  test "should get ayuda" do
    get :ayuda
    assert_response :success
  end

end
