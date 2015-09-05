require 'test_helper'

class WantOptionsControllerTest < ActionController::TestCase
  setup do
    @want_option = want_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:want_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create want_option" do
    assert_difference('WantOption.count') do
      post :create, want_option: {  }
    end

    assert_redirected_to want_option_path(assigns(:want_option))
  end

  test "should show want_option" do
    get :show, id: @want_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @want_option
    assert_response :success
  end

  test "should update want_option" do
    put :update, id: @want_option, want_option: {  }
    assert_redirected_to want_option_path(assigns(:want_option))
  end

  test "should destroy want_option" do
    assert_difference('WantOption.count', -1) do
      delete :destroy, id: @want_option
    end

    assert_redirected_to want_options_path
  end
end
