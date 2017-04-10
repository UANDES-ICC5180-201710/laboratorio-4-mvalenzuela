require 'rails_helper'

RSpec.describe Grade, type: :model do
  describe "Validations" do
    it "is valid with valid attributes" do
      grade = build(:grade)
      expect(grade).to be_valid
    end
  end
end
