require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get awesome_wedding_destinations_in_india" do
    get homes_awesome_wedding_destinations_in_india_url
    assert_response :success
  end

end
