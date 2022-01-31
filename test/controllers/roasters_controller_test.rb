require 'test_helper'

class RoastersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get roasters_new_url
    assert_response :success
  end

  test "should get index" do
    get roasters_index_url
    assert_response :success
  end

  test "should get show" do
    get roasters_show_url
    assert_response :success
  end

  test "should get edit" do
    get roasters_edit_url
    assert_response :success
  end

end
