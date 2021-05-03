require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @projects = assign(:projects, Projects.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit projects form" do
    render

    assert_select "form[action=?][method=?]", projects_path(@projects), "post" do

      assert_select "input[name=?]", "projects[title]"

      assert_select "textarea[name=?]", "projects[description]"
    end
  end
end
