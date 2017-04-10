FactoryGirl.define do
  factory :course do
    title "electroterrorismo"
    code "fis120"
    association :teacher, factory: :person
    quota 20
  end
end
