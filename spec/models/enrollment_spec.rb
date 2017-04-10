require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  describe "Validations" do
    it "is valid with valid attributes" do
      enrollment = build(:enrollment)
      expect(enrollment).to be_valid
    end
  end
end
