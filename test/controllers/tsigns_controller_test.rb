require 'test_helper'

class TsignsControllerTest < ActionController::TestCase
  setup do
    @tsign = tsigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tsigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tsign" do
    assert_difference('Tsign.count') do
      post :create, tsign: { signature: @tsign.signature }
    end

    assert_redirected_to tsign_path(assigns(:tsign))
  end

  test "should show tsign" do
    get :show, id: @tsign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tsign
    assert_response :success
  end

  test "should update tsign" do
    patch :update, id: @tsign, tsign: { signature: @tsign.signature }
    assert_redirected_to tsign_path(assigns(:tsign))
  end

  test "should destroy tsign" do
    assert_difference('Tsign.count', -1) do
      delete :destroy, id: @tsign
    end

    assert_redirected_to tsigns_path
  end
end
