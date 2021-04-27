require "test_helper"

class PojectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poject = pojects(:one)
  end

  test "should get index" do
    get pojects_url
    assert_response :success
  end

  test "should get new" do
    get new_poject_url
    assert_response :success
  end

  test "should create poject" do
    assert_difference('Poject.count') do
      post pojects_url, params: { poject: { description: @poject.description, title: @poject.title } }
    end

    assert_redirected_to poject_url(Poject.last)
  end

  test "should show poject" do
    get poject_url(@poject)
    assert_response :success
  end

  test "should get edit" do
    get edit_poject_url(@poject)
    assert_response :success
  end

  test "should update poject" do
    patch poject_url(@poject), params: { poject: { description: @poject.description, title: @poject.title } }
    assert_redirected_to poject_url(@poject)
  end

  test "should destroy poject" do
    assert_difference('Poject.count', -1) do
      delete poject_url(@poject)
    end

    assert_redirected_to pojects_url
  end
end
