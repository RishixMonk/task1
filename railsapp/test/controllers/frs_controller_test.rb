require "test_helper"

class FrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fr = frs(:one)
  end

  test "should get index" do
    get frs_url
    assert_response :success
  end

  test "should get new" do
    get new_fr_url
    assert_response :success
  end

  test "should create fr" do
    assert_difference("Fr.count") do
      post frs_url, params: { fr: { email: @fr.email, first_name: @fr.first_name, insta_id: @fr.insta_id, last_name: @fr.last_name, phone: @fr.phone } }
    end

    assert_redirected_to fr_url(Fr.last)
  end

  test "should show fr" do
    get fr_url(@fr)
    assert_response :success
  end

  test "should get edit" do
    get edit_fr_url(@fr)
    assert_response :success
  end

  test "should update fr" do
    patch fr_url(@fr), params: { fr: { email: @fr.email, first_name: @fr.first_name, insta_id: @fr.insta_id, last_name: @fr.last_name, phone: @fr.phone } }
    assert_redirected_to fr_url(@fr)
  end

  test "should destroy fr" do
    assert_difference("Fr.count", -1) do
      delete fr_url(@fr)
    end

    assert_redirected_to frs_url
  end
end
