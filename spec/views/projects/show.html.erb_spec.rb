require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @projects = assign(:projects, Projects.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
