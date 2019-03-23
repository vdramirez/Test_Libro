require 'test_helper'

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get session_new_url
    assert_response :success
  end

  test "should get create" do
    get session_create_url
    assert_response :success
  end

  test "should get destroy" do
    get session_destroy_url
    assert_response :success
  end




  test "should login" do
    dave = users(:one)
    post :create, :name => dave.name, :password => 'secret'
    assert_redirected_to admin_url
    assert_equal dave.id, session[:user_id]
    test "should fail login" do
      dave = users(:one)
      post :create, :name => dave.name, :password => 'wrong'
      assert_redirected_to login_url
    end
    test "should logout" do
      delete :destroy
      assert_redirected_to store_url
    end
  end
end
