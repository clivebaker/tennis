require 'test_helper'

class ClivesControllerTest < ActionController::TestCase
  setup do
    @clife = clives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clife" do
    assert_difference('Clive.count') do
      post :create, clife: { name: @clife.name }
    end

    assert_redirected_to clife_path(assigns(:clife))
  end

  test "should show clife" do
    get :show, id: @clife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clife
    assert_response :success
  end

  test "should update clife" do
    put :update, id: @clife, clife: { name: @clife.name }
    assert_redirected_to clife_path(assigns(:clife))
  end

  test "should destroy clife" do
    assert_difference('Clive.count', -1) do
      delete :destroy, id: @clife
    end

    assert_redirected_to clives_path
  end
end
