require "application_system_test_case"

class PojectsTest < ApplicationSystemTestCase
  setup do
    @poject = pojects(:one)
  end

  test "visiting the index" do
    visit pojects_url
    assert_selector "h1", text: "Pojects"
  end

  test "creating a Poject" do
    visit pojects_url
    click_on "New Poject"

    fill_in "Description", with: @poject.description
    fill_in "Title", with: @poject.title
    click_on "Create Poject"

    assert_text "Poject was successfully created"
    click_on "Back"
  end

  test "updating a Poject" do
    visit pojects_url
    click_on "Edit", match: :first

    fill_in "Description", with: @poject.description
    fill_in "Title", with: @poject.title
    click_on "Update Poject"

    assert_text "Poject was successfully updated"
    click_on "Back"
  end

  test "destroying a Poject" do
    visit pojects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poject was successfully destroyed"
  end
end
