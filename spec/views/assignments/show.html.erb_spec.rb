require 'rails_helper'

RSpec.describe "assignments/show", type: :view do
  before(:each) do
    @assignment = assign(:assignment, Assignment.create!(
      :title => "Title",
      :statement => "Statement",
      :course_id => "Course"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Statement/)
    expect(rendered).to match(/Course/)
  end
end
