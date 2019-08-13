require 'test_helper'

class SuperherosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get superheros_new_url
    assert_response :success
  end

  test "should get show" do
    get superheros_show_url
    assert_response :success
  end

  test "should get edit" do
    get superheros_edit_url
    assert_response :success
  end

  test "should get index" do
    get superheros_index_url
    assert_response :success
  end

end
