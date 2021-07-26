require "test_helper"

class UtilityTicketsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get utility_tickets_create_url
    assert_response :success
  end
end
