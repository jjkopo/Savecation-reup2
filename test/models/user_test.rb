require 'test_helper'

class UserTest < ActiveSupport::TestCase

test "Requires all fields" do
  user = User.new
    assert_not user.valid?
    assert_equal [:email, :password, :username], user.errors.keys
  end

  def setup
      @user = User.new(username: "Test User", email: "user@example.com", password: "12345")
    end

  test "user must be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

test "must have email" do
  user = User.new
  assert_not_nil user.email, "email must be entered"
end

test "must have username" do
  user = User.new
  assert_not_nil user.username, "username must be entered"
end

test "must have password" do
  user = User.new
  assert_not_nil user.password, "password must be entered"
end

test "password must match" do
  user = User.new
  assert_equal user.password, user.password
end


end
