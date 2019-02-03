require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit index_index_url
    fill_in "uname", with: "notasingle word test"
    click_on "submit"
    assert_selector "p", text: "Events by user"
    assert_selector "span", text: "notasingle"
  end
end
