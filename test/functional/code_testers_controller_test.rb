require 'test_helper'

class CodeTestersControllerTest < ActionController::TestCase
  setup do
    @code_tester = code_testers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_testers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_tester" do
    assert_difference('CodeTester.count') do
      post :create, code_tester: { Code: @code_tester.Code, Title: @code_tester.Title }
    end

    assert_redirected_to code_tester_path(assigns(:code_tester))
  end

  test "should show code_tester" do
    get :show, id: @code_tester
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @code_tester
    assert_response :success
  end

  test "should update code_tester" do
    put :update, id: @code_tester, code_tester: { Code: @code_tester.Code, Title: @code_tester.Title }
    assert_redirected_to code_tester_path(assigns(:code_tester))
  end

  test "should destroy code_tester" do
    assert_difference('CodeTester.count', -1) do
      delete :destroy, id: @code_tester
    end

    assert_redirected_to code_testers_path
  end
end
