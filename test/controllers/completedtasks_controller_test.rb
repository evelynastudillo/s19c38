require 'test_helper'

class CompletedtasksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get completedtasks_create_url
    assert_response :success
  end

end
