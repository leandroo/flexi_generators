require 'test_helper'

class <%= session_plural_class_name %>ControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    post :create, :<%= session_singular_name %> => { :username => "foo", :password => "badpassword" }
    assert_template 'new'
    assert_nil <%= session_class_name %>.find
  end
  
  def test_create_valid
    post :create, :<%= session_singular_name %> => { :username => "foo", :password => "secret" }
    assert_redirected_to "/"
    assert_equal <%= user_plural_name %>(:foo), <%= session_class_name %>.find.<%= user_singular_name %>
  end
end
