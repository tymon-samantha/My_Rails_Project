FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
    email
    password "test2016"
    first_name "Jane"
    last_name "Doe"
    admin false
  end
  factory :admin, class: User do
    email
    password "test2016"
    admin true
    first_name "Anne"
    last_name "Bronte"
  end
end