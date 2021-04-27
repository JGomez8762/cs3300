require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Projects" do
    visit projects_url
    click_on "New Projects"

    fill_in "Description", with: @project.description
    fill_in "Title", with: @project.title
    click_on "Create Projects"

    assert_text "Projects was successfully created"
    click_on "Back"
  end

  test "updating a Projects" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Description", with: @project.description
    fill_in "Title", with: @project.title
    click_on "Update Projects"

    assert_text "Projects was successfully updated"
    click_on "Back"
  end

  test "destroying a Projects" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projects was successfully destroyed"
  end
end
