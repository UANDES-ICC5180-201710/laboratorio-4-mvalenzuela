require 'rails_helper'

RSpec.describe Assignment, type: :model do
  describe "Validations" do
    it "is valid with valid attributes" do
      assignment = build(:assignment)
      expect(assignment).to be_valid
    end
  end
end
