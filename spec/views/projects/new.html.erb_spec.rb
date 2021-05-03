require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:projects, Projects.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new projects form" do
    render

    assert_select "form[action=?][method=?]", projects_index_path, "post" do

      assert_select "input[name=?]", "projects[title]"

      assert_select "textarea[name=?]", "projects[description]"
    end
  end
end
