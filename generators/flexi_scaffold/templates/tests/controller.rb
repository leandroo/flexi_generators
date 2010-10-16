require 'test_helper'

class <%= plural_class_name %>ControllerTest < ActionController::TestCase
  setup do
    @<%= singular_name %> = <%= plural_name %>(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:<%= plural_name %>)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create <%= singular_name %>" do
    assert_difference('<%= class_name %>.count') do
      post :create, :<%= singular_name %> => @<%= singular_name %>.attributes
    end

    assert_redirected_to admin_<%= singular_name %>_path(assigns(:<%= singular_name %>))
  end

  test "should show <%= singular_name %>" do
    get :show, :id => @<%= singular_name %>.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @<%= singular_name %>.to_param
    assert_response :success
  end

  test "should update post" do
    put :update, :id => @<%= singular_name %>.to_param, :<%= singular_name %> => @<%= singular_name %>.attributes
    assert_redirected_to admin_<%= singular_name %>_path(assigns(:<%= singular_name %>))
  end

  test "should destroy <%= singular_name %>" do
    assert_difference('<%= class_name %>.count', -1) do
      delete :destroy, :id => @<%= singular_name %>.to_param
    end

    assert_redirected_to admin_<%= plural_name %>_path
  end
end

