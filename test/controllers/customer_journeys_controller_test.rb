require 'test_helper'

class CustomerJourneysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_journey = customer_journeys(:one)
  end

  test "should get index" do
    get customer_journeys_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_journey_url
    assert_response :success
  end

  test "should create customer_journey" do
    assert_difference('CustomerJourney.count') do
      post customer_journeys_url, params: { customer_journey: { description: @customer_journey.description, name: @customer_journey.name, user_id: @customer_journey.user_id } }
    end

    assert_redirected_to customer_journey_url(CustomerJourney.last)
  end

  test "should show customer_journey" do
    get customer_journey_url(@customer_journey)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_journey_url(@customer_journey)
    assert_response :success
  end

  test "should update customer_journey" do
    patch customer_journey_url(@customer_journey), params: { customer_journey: { description: @customer_journey.description, name: @customer_journey.name, user_id: @customer_journey.user_id } }
    assert_redirected_to customer_journey_url(@customer_journey)
  end

  test "should destroy customer_journey" do
    assert_difference('CustomerJourney.count', -1) do
      delete customer_journey_url(@customer_journey)
    end

    assert_redirected_to customer_journeys_url
  end
end
