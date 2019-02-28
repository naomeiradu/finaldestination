require "application_system_test_case"

class MslanesTest < ApplicationSystemTestCase
  setup do
    @mslane = mslanes(:one)
  end

  test "visiting the index" do
    visit mslanes_url
    assert_selector "h1", text: "Mslanes"
  end

  test "creating a Mslane" do
    visit mslanes_url
    click_on "New Mslane"

    fill_in "Category", with: @mslane.Category
    fill_in "Cost", with: @mslane.Cost
    fill_in "Release", with: @mslane.Release
    fill_in "Title", with: @mslane.Title
    click_on "Create Mslane"

    assert_text "Mslane was successfully created"
    click_on "Back"
  end

  test "updating a Mslane" do
    visit mslanes_url
    click_on "Edit", match: :first

    fill_in "Category", with: @mslane.Category
    fill_in "Cost", with: @mslane.Cost
    fill_in "Release", with: @mslane.Release
    fill_in "Title", with: @mslane.Title
    click_on "Update Mslane"

    assert_text "Mslane was successfully updated"
    click_on "Back"
  end

  test "destroying a Mslane" do
    visit mslanes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mslane was successfully destroyed"
  end
end
