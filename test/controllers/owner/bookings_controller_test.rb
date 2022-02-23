require "test_helper"

class Owner::BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_bookings_index_url
    assert_response :success
  end
end
