require "test_helper"

class ProjectPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_page = project_pages(:one)
  end

  test "should get index" do
    get project_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_project_page_url
    assert_response :success
  end

  test "should create project_page" do
    assert_difference('ProjectPage.count') do
      post project_pages_url, params: { project_page: { description: @project_page.description, title: @project_page.title } }
    end

    assert_redirected_to project_page_url(ProjectPage.last)
  end

  test "should show project_page" do
    get project_page_url(@project_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_page_url(@project_page)
    assert_response :success
  end

  test "should update project_page" do
    patch project_page_url(@project_page), params: { project_page: { description: @project_page.description, title: @project_page.title } }
    assert_redirected_to project_page_url(@project_page)
  end

  test "should destroy project_page" do
    assert_difference('ProjectPage.count', -1) do
      delete project_page_url(@project_page)
    end

    assert_redirected_to project_pages_url
  end
end
