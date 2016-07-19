require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test "User must be have name" do
    @user.name = nil
    assert_not @user.valid?
  end
end
