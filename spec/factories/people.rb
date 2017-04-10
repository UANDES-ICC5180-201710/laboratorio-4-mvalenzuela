FactoryGirl.define do
  factory :person do
    first_name "John"
    last_name "Petrucci"
    sequence(:email) { |n| "#{n}@example.com" }
    is_professor nil
  end
end
