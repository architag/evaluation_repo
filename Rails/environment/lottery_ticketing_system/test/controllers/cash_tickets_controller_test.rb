require "test_helper"

class CashTicketsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cash_tickets_create_url
    assert_response :success
  end
end
