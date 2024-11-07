require "test_helper"

class DialogsControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get dialogs_welcome_url
    assert_response :success
  end

  test "should get first_meet" do
    get dialogs_first_meet_url
    assert_response :success
  end

  test "should get after_first_meet" do
    get dialogs_after_first_meet_url
    assert_response :success
  end

  test "should get ask_about_age" do
    get dialogs_ask_about_age_url
    assert_response :success
  end

  test "should get after_ask_about_age" do
    get dialogs_after_ask_about_age_url
    assert_response :success
  end

  test "should get date_info" do
    get dialogs_date_info_url
    assert_response :success
  end
end
