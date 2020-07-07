require 'test_helper'

class TriplaceTest < ActiveSupport::TestCase
   test "valid triplace" do
    newTri = Triplace.new
    assert_not newTri.valid?
  end
end
