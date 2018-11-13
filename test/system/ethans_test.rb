require "application_system_test_case"

class EthansTest < ApplicationSystemTestCase
  setup do
    @ethan = ethans(:one)
  end

  test "visiting the index" do
    visit ethans_url
    assert_selector "h1", text: "Ethans"
  end

  test "creating a Ethan" do
    visit ethans_url
    click_on "New Ethan"

    fill_in "Login", with: @ethan.login
    click_on "Create Ethan"

    assert_text "Ethan was successfully created"
    click_on "Back"
  end

  test "updating a Ethan" do
    visit ethans_url
    click_on "Edit", match: :first

    fill_in "Login", with: @ethan.login
    click_on "Update Ethan"

    assert_text "Ethan was successfully updated"
    click_on "Back"
  end

  test "destroying a Ethan" do
    visit ethans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ethan was successfully destroyed"
  end
end
