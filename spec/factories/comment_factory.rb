FactoryGirl.define do
  sequence(:userId) { |n| "user#{n}" }
  sequence(:rating) { |n| "#{n}" }
  sequence(:productId) { |n| "product#{n}" }

  factory :comment do
    userId
    body "this bike is a bike"
    rating
    productId
  end
end