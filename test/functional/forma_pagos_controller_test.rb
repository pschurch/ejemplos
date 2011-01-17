require 'test_helper'

class FormaPagosControllerTest < ActionController::TestCase
  setup do
    @forma_pago = forma_pagos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forma_pagos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forma_pago" do
    assert_difference('FormaPago.count') do
      post :create, :forma_pago => @forma_pago.attributes
    end

    assert_redirected_to forma_pago_path(assigns(:forma_pago))
  end

  test "should show forma_pago" do
    get :show, :id => @forma_pago.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @forma_pago.to_param
    assert_response :success
  end

  test "should update forma_pago" do
    put :update, :id => @forma_pago.to_param, :forma_pago => @forma_pago.attributes
    assert_redirected_to forma_pago_path(assigns(:forma_pago))
  end

  test "should destroy forma_pago" do
    assert_difference('FormaPago.count', -1) do
      delete :destroy, :id => @forma_pago.to_param
    end

    assert_redirected_to forma_pagos_path
  end
end
