require "test_helper"

class Owner::ToursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_tours_index_url
    assert_response :success
  end
end
