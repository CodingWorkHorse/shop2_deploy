require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { address: @user.address, balance: @user.balance, email: @user.email, lattitude: @user.lattitude, longitude: @user.longitude, password: 'secret', password_confirmation: 'secret', role: @user.role, route: @user.route, stop_on_route: @user.stop_on_route, town: @user.town, zipcode: @user.zipcode } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { address: @user.address, balance: @user.balance, email: @user.email, lattitude: @user.lattitude, longitude: @user.longitude, password: 'secret', password_confirmation: 'secret', role: @user.role, route: @user.route, stop_on_route: @user.stop_on_route, town: @user.town, zipcode: @user.zipcode } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
