require 'test_helper'

class RoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @route = routes(:one)
  end

  test "should get index" do
    get routes_url
    assert_response :success
  end

  test "should get new" do
    get new_route_url
    assert_response :success
  end

  test "should create route" do
    assert_difference('Route.count') do
      post routes_url, params: { route: { cargo_capacity: @route.cargo_capacity, departure_address: @route.departure_address, departure_lattitude: @route.departure_lattitude, departure_longitude: @route.departure_longitude, driver: @route.driver, return_address: @route.return_address, return_lattitude: @route.return_lattitude, return_longitude: @route.return_longitude, stop_1_address: @route.stop_1_address, stop_2_address: @route.stop_2_address, stop_3_address: @route.stop_3_address, stop_4_address: @route.stop_4_address, stop_5_address: @route.stop_5_address, stop_6_address: @route.stop_6_address, vehicle: @route.vehicle } }
    end

    assert_redirected_to route_url(Route.last)
  end

  test "should show route" do
    get route_url(@route)
    assert_response :success
  end

  test "should get edit" do
    get edit_route_url(@route)
    assert_response :success
  end

  test "should update route" do
    patch route_url(@route), params: { route: { cargo_capacity: @route.cargo_capacity, departure_address: @route.departure_address, departure_lattitude: @route.departure_lattitude, departure_longitude: @route.departure_longitude, driver: @route.driver, return_address: @route.return_address, return_lattitude: @route.return_lattitude, return_longitude: @route.return_longitude, stop_1_address: @route.stop_1_address, stop_2_address: @route.stop_2_address, stop_3_address: @route.stop_3_address, stop_4_address: @route.stop_4_address, stop_5_address: @route.stop_5_address, stop_6_address: @route.stop_6_address, vehicle: @route.vehicle } }
    assert_redirected_to route_url(@route)
  end

  test "should destroy route" do
    assert_difference('Route.count', -1) do
      delete route_url(@route)
    end

    assert_redirected_to routes_url
  end
end
