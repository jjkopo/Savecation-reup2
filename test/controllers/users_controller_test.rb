require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test"invalid signup information" do 
  	get signup_path
  	assert_no_difference 'User.count' do 
       post signup2_path, params: {user:{ name: "",
       	                                email: "user@invalid",
       	                                password:      "waa",
       	                                password_confirmation: "wan"}}
  		
  	end
  end
 test "valid singup information" do
 	get signup_path
 	assert_no_difference 'User.count' do
 		post signup2_path, params: {user:{name: "userrrr",
 			                           email: "userr@RR.com",
 			                           password:    "userrrr",
 			                           password_confirmation: "userrrr"} }
    end
    end 			                           
end
