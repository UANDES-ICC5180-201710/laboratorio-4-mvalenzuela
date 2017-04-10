FactoryGirl.define do
  factory :enrollment do
    association :student, factory: :person
    course
  end
end
