require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get crea" do
    get users_crea_url
    assert_response :success
  end

end
