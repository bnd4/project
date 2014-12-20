require 'test_helper'

class TheadsControllerTest < ActionController::TestCase
  setup do
    @thead = theads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:theads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thead" do
    assert_difference('Thead.count') do
      post :create, thead: { head: @thead.head }
    end

    assert_redirected_to thead_path(assigns(:thead))
  end

  test "should show thead" do
    get :show, id: @thead
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thead
    assert_response :success
  end

  test "should update thead" do
    patch :update, id: @thead, thead: { head: @thead.head }
    assert_redirected_to thead_path(assigns(:thead))
  end

  test "should destroy thead" do
    assert_difference('Thead.count', -1) do
      delete :destroy, id: @thead
    end

    assert_redirected_to theads_path
  end
end
