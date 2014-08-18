require 'test_helper'

class NoapplicationsControllerTest < ActionController::TestCase
  setup do
    @noapplication = noapplications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:noapplications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create noapplication" do
    assert_difference('Noapplication.count') do
      post :create, noapplication: { no_of_application: @noapplication.no_of_application, path: @noapplication.path }
    end

    assert_redirected_to noapplication_path(assigns(:noapplication))
  end

  test "should show noapplication" do
    get :show, id: @noapplication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @noapplication
    assert_response :success
  end

  test "should update noapplication" do
    patch :update, id: @noapplication, noapplication: { no_of_application: @noapplication.no_of_application, path: @noapplication.path }
    assert_redirected_to noapplication_path(assigns(:noapplication))
  end

  test "should destroy noapplication" do
    assert_difference('Noapplication.count', -1) do
      delete :destroy, id: @noapplication
    end

    assert_redirected_to noapplications_path
  end
end
