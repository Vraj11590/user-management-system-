require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(name: "Vrajesh Patel", email: "user@example.com", phone: 8622 )
  end

  #test for unique ness in email
  test "email addresses should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid? #this should be false
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "    "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end
  test "email validation" do
    assert @user.valid?
  end

  test "all emails should be downcased" do
    @user.save
    assert_equal @user.email, @user.email.downcase
  end


end
