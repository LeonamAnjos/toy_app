require 'test_helper'

class SignupLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get signup_path
    assert_template 'users/new'
    assert_select "a[href=?]", root_path
  end

end
