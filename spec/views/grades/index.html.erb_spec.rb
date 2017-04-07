require 'rails_helper'

RSpec.describe "grades/index", type: :view do
  before(:each) do
    assign(:grades, [
      Grade.create!(
        :person_id => "Person",
        :assignment_id => "Assignment",
        :value => "Value"
      ),
      Grade.create!(
        :person_id => "Person",
        :assignment_id => "Assignment",
        :value => "Value"
      )
    ])
  end

  it "renders a list of grades" do
    render
    assert_select "tr>td", :text => "Person".to_s, :count => 2
    assert_select "tr>td", :text => "Assignment".to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
