require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'name' do
    asset_equal "Accountant", users(:accountant).name
  end
end
