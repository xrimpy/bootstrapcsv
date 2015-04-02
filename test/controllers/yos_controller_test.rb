require 'test_helper'

class YosControllerTest < ActionController::TestCase
  setup do
    @yo = yos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yo" do
    assert_difference('Yo.count') do
      post :create, yo: { title: @yo.title }
    end

    assert_redirected_to yo_path(assigns(:yo))
  end

  test "should show yo" do
    get :show, id: @yo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yo
    assert_response :success
  end

  test "should update yo" do
    patch :update, id: @yo, yo: { title: @yo.title }
    assert_redirected_to yo_path(assigns(:yo))
  end

  test "should destroy yo" do
    assert_difference('Yo.count', -1) do
      delete :destroy, id: @yo
    end

    assert_redirected_to yos_path
  end
end
