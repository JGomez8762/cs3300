require "application_system_test_case"

class ProjectPagesTest < ApplicationSystemTestCase
  setup do
    @project_page = project_pages(:one)
  end

  test "visiting the index" do
    visit project_pages_url
    assert_selector "h1", text: "Project Pages"
  end

  test "creating a Project page" do
    visit project_pages_url
    click_on "New Project Page"

    fill_in "Description", with: @project_page.description
    fill_in "Title", with: @project_page.title
    click_on "Create Project page"

    assert_text "Project page was successfully created"
    click_on "Back"
  end

  test "updating a Project page" do
    visit project_pages_url
    click_on "Edit", match: :first

    fill_in "Description", with: @project_page.description
    fill_in "Title", with: @project_page.title
    click_on "Update Project page"

    assert_text "Project page was successfully updated"
    click_on "Back"
  end

  test "destroying a Project page" do
    visit project_pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project page was successfully destroyed"
  end
end
