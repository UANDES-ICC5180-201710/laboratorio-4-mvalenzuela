require 'rails_helper'

RSpec.describe "assignments/index", type: :view do
  before(:each) do
    assign(:assignments, [
      Assignment.create!(
        :title => "Title",
        :statement => "Statement",
        :course_id => "Course"
      ),
      Assignment.create!(
        :title => "Title",
        :statement => "Statement",
        :course_id => "Course"
      )
    ])
  end

  it "renders a list of assignments" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Statement".to_s, :count => 2
    assert_select "tr>td", :text => "Course".to_s, :count => 2
  end
end
