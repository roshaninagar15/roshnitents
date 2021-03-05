require 'test_helper'

class CoffeeRoastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffee_roast = coffee_roasts(:one)
  end

  test "should get index" do
    get coffee_roasts_url
    assert_response :success
  end

  test "should get new" do
    get new_coffee_roast_url
    assert_response :success
  end

  test "should create coffee_roast" do
    assert_difference('CoffeeRoast.count') do
      post coffee_roasts_url, params: { coffee_roast: { email_id: @coffee_roast.email_id, mobile_number: @coffee_roast.mobile_number, occasion: @coffee_roast.occasion, query: @coffee_roast.query, username: @coffee_roast.username } }
    end

    assert_redirected_to coffee_roast_url(CoffeeRoast.last)
  end

  test "should show coffee_roast" do
    get coffee_roast_url(@coffee_roast)
    assert_response :success
  end

  test "should get edit" do
    get edit_coffee_roast_url(@coffee_roast)
    assert_response :success
  end

  test "should update coffee_roast" do
    patch coffee_roast_url(@coffee_roast), params: { coffee_roast: { email_id: @coffee_roast.email_id, mobile_number: @coffee_roast.mobile_number, occasion: @coffee_roast.occasion, query: @coffee_roast.query, username: @coffee_roast.username } }
    assert_redirected_to coffee_roast_url(@coffee_roast)
  end

  test "should destroy coffee_roast" do
    assert_difference('CoffeeRoast.count', -1) do
      delete coffee_roast_url(@coffee_roast)
    end

    assert_redirected_to coffee_roasts_url
  end
end
