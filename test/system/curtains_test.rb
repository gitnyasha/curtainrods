require "application_system_test_case"

class CurtainsTest < ApplicationSystemTestCase
  setup do
    @curtain = curtains(:one)
  end

  test "visiting the index" do
    visit curtains_url
    assert_selector "h1", text: "Curtains"
  end

  test "creating a Curtain" do
    visit curtains_url
    click_on "New Curtain"

    fill_in "Description", with: @curtain.description
    fill_in "Name", with: @curtain.name
    fill_in "Price", with: @curtain.price
    click_on "Create Curtain"

    assert_text "Curtain was successfully created"
    click_on "Back"
  end

  test "updating a Curtain" do
    visit curtains_url
    click_on "Edit", match: :first

    fill_in "Description", with: @curtain.description
    fill_in "Name", with: @curtain.name
    fill_in "Price", with: @curtain.price
    click_on "Update Curtain"

    assert_text "Curtain was successfully updated"
    click_on "Back"
  end

  test "destroying a Curtain" do
    visit curtains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curtain was successfully destroyed"
  end
end
