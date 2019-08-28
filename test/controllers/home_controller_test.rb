require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get tasks" do
    get home_tasks_url
    assert_response :success
  end

end
