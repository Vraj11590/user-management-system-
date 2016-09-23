#this module tests all of the helper functions for the app

#this module tests the application_helper module

require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "fulltitle_Helper_test" do
    assert_equal full_title, "User Management"
    assert_equal full_title("Home"), "User Management | Home"
  end
end