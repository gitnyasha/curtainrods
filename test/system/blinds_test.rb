require "application_system_test_case"

class BlindsTest < ApplicationSystemTestCase
  setup do
    @blind = blinds(:one)
  end

  test "visiting the index" do
    visit blinds_url
    assert_selector "h1", text: "Blinds"
  end

  test "creating a Blind" do
    visit blinds_url
    click_on "New Blind"

    fill_in "Description", with: @blind.description
    fill_in "Name", with: @blind.name
    fill_in "Price", with: @blind.price
    click_on "Create Blind"

    assert_text "Blind was successfully created"
    click_on "Back"
  end

  test "updating a Blind" do
    visit blinds_url
    click_on "Edit", match: :first

    fill_in "Description", with: @blind.description
    fill_in "Name", with: @blind.name
    fill_in "Price", with: @blind.price
    click_on "Update Blind"

    assert_text "Blind was successfully updated"
    click_on "Back"
  end

  test "destroying a Blind" do
    visit blinds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blind was successfully destroyed"
  end
end
