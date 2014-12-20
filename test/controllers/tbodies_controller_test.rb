require 'test_helper'

class TbodiesControllerTest < ActionController::TestCase
  setup do
    @tbody = tbodies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tbodies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tbody" do
    assert_difference('Tbody.count') do
      post :create, tbody: { main: @tbody.main }
    end

    assert_redirected_to tbody_path(assigns(:tbody))
  end

  test "should show tbody" do
    get :show, id: @tbody
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tbody
    assert_response :success
  end

  test "should update tbody" do
    patch :update, id: @tbody, tbody: { main: @tbody.main }
    assert_redirected_to tbody_path(assigns(:tbody))
  end

  test "should destroy tbody" do
    assert_difference('Tbody.count', -1) do
      delete :destroy, id: @tbody
    end

    assert_redirected_to tbodies_path
  end
end
