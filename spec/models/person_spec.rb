require 'rails_helper'

RSpec.describe Person, type: :model do
  describe "Validations" do
    it "is valid with valid attributes" do
      person = build(:person)
      expect(person).to be_valid
    end

    it "is not valid without first_name" do
      person = build(:person, first_name: nil)
      expect(person).to_not be_valid
    end

    it "is not valid without last_name" do
      person = build(:person, last_name: nil)
      expect(person).to_not be_valid
    end

    it "is not valid without email" do
      person = build(:person, email: nil)
      expect(person).to_not be_valid
    end
  end
end
