require 'test_helper'

class CanOptionsControllerTest < ActionController::TestCase
  setup do
    @can_option = can_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:can_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create can_option" do
    assert_difference('CanOption.count') do
      post :create, can_option: {  }
    end

    assert_redirected_to can_option_path(assigns(:can_option))
  end

  test "should show can_option" do
    get :show, id: @can_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @can_option
    assert_response :success
  end

  test "should update can_option" do
    put :update, id: @can_option, can_option: {  }
    assert_redirected_to can_option_path(assigns(:can_option))
  end

  test "should destroy can_option" do
    assert_difference('CanOption.count', -1) do
      delete :destroy, id: @can_option
    end

    assert_redirected_to can_options_path
  end
end
