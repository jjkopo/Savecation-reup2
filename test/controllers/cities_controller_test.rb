require 'test_helper'

class CitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @city = cities(:one)
  end

  test "should get index" do
    get cities_url
    assert_response :success
  end

  test "shouldnot get new" do
    get new_city_url
    assert_response :success
  end

  test "shouldnot create city" do
    assert_not_difference('City.count') do
      post cities_url, params: { city: { name: @city.name } }
    end

    assert_redirected_to city_url(City.last)
  end

  test "should show city" do
    get city_url(@city)
    assert_response :success
  end

  test "should get edit" do
    get edit_city_url(@city)
    assert_response :success
  end

 
end
