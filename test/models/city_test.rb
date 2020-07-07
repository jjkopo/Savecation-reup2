require 'test_helper'

class CityTest < ActiveSupport::TestCase
    test "valid city" do
    newcity = City.new
    assert_not newcity.valid?
  end


  test "city must be unique" do
    newcity = City.new
    duplicate_city = newcity.dup
    newcity.save
    assert_not duplicate_city.valid?
  end
end
