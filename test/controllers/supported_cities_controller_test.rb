require 'test_helper'

class SupportedCitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get supported_cities_index_url
    assert_response :success
  end

end
