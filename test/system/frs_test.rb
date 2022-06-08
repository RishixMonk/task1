require "application_system_test_case"

class FrsTest < ApplicationSystemTestCase
  setup do
    @fr = frs(:one)
  end

  test "visiting the index" do
    visit frs_url
    assert_selector "h1", text: "Frs"
  end

  test "should create fr" do
    visit frs_url
    click_on "New fr"

    fill_in "Email", with: @fr.email
    fill_in "First name", with: @fr.first_name
    fill_in "Insta", with: @fr.insta_id
    fill_in "Last name", with: @fr.last_name
    fill_in "Phone", with: @fr.phone
    click_on "Create Fr"

    assert_text "Fr was successfully created"
    click_on "Back"
  end

  test "should update Fr" do
    visit fr_url(@fr)
    click_on "Edit this fr", match: :first

    fill_in "Email", with: @fr.email
    fill_in "First name", with: @fr.first_name
    fill_in "Insta", with: @fr.insta_id
    fill_in "Last name", with: @fr.last_name
    fill_in "Phone", with: @fr.phone
    click_on "Update Fr"

    assert_text "Fr was successfully updated"
    click_on "Back"
  end

  test "should destroy Fr" do
    visit fr_url(@fr)
    click_on "Destroy this fr", match: :first

    assert_text "Fr was successfully destroyed"
  end
end
