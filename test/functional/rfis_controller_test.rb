require 'test_helper'

class RfisControllerTest < ActionController::TestCase
  setup do
    @rfi = rfis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rfis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rfi" do
    assert_difference('Rfi.count') do
      post :create, rfi: { date_answered: @rfi.date_answered, date_requested: @rfi.date_requested, number: @rfi.number, title: @rfi.title }
    end

    assert_redirected_to rfi_path(assigns(:rfi))
  end

  test "should show rfi" do
    get :show, id: @rfi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rfi
    assert_response :success
  end

  test "should update rfi" do
    put :update, id: @rfi, rfi: { date_answered: @rfi.date_answered, date_requested: @rfi.date_requested, number: @rfi.number, title: @rfi.title }
    assert_redirected_to rfi_path(assigns(:rfi))
  end

  test "should destroy rfi" do
    assert_difference('Rfi.count', -1) do
      delete :destroy, id: @rfi
    end

    assert_redirected_to rfis_path
  end
end
