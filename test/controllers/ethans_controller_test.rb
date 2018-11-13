require 'test_helper'

class EthansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ethan = ethans(:one)
  end

  test "should get index" do
    get ethans_url
    assert_response :success
  end

  test "should get new" do
    get new_ethan_url
    assert_response :success
  end

  test "should create ethan" do
    assert_difference('Ethan.count') do
      post ethans_url, params: { ethan: { login: @ethan.login } }
    end

    assert_redirected_to ethan_url(Ethan.last)
  end

  test "should show ethan" do
    get ethan_url(@ethan)
    assert_response :success
  end

  test "should get edit" do
    get edit_ethan_url(@ethan)
    assert_response :success
  end

  test "should update ethan" do
    patch ethan_url(@ethan), params: { ethan: { login: @ethan.login } }
    assert_redirected_to ethan_url(@ethan)
  end

  test "should destroy ethan" do
    assert_difference('Ethan.count', -1) do
      delete ethan_url(@ethan)
    end

    assert_redirected_to ethans_url
  end
end
