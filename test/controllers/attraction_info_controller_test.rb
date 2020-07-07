require 'test_helper'

class AttractionInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attraction_info_index_url
    assert_response :success
  end

end
