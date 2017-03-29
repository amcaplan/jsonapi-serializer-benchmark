FactoryGirl.define do
  factory :author do
    sequence(:name) { |n| "An Author Named #{n}" }
  end
end
