require 'test_helper'

class TriplacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user=users(:Admin)
    @user2=users(:one)
    @city=cities(:one)
    @triplace=triplaces(:one)
  end
  test"can create triplace" do
      get login_path
      post login2_path, params: {session:{email:    @user.email,
                                          password:  'abcd'} }
      get import_path(@user.id)
      assert_not flash.empty? 
      #it may have problem but it is work                                    
  end
  test"cannot create triplace" do
      get login_path
      post login2_path, params: {session:{email:    @user2.email,
                                          password:  'qwe'} }
      get import_path(@user2)
      assert_not flash.empty? 
      end

 test "should get index" do
    get triplaces_url
    assert_response :success
  end 
test "should get new" do
    get new_triplace_url
    assert_response :success
  end 
test "should get edit" do
    get edit_triplace_url(@triplace.id)
    assert_response :success
  end 
test "should get show" do
    get triplace_url(@triplace)
    assert_response :success
  end 
end
    