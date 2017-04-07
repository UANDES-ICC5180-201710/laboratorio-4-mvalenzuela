require 'rails_helper'

RSpec.describe "grades/show", type: :view do
  before(:each) do
    @grade = assign(:grade, Grade.create!(
      :person_id => "Person",
      :assignment_id => "Assignment",
      :value => "Value"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Person/)
    expect(rendered).to match(/Assignment/)
    expect(rendered).to match(/Value/)
  end
end
