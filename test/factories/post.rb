FactoryGirl.define do
  factory :post do
    author
    sequence(:title) { |n| "How to read a book effectively #{n}" }
    body  "There are five steps involved."

    trait :with_comments do
      after_create do |post|
        FactoryGirl.create_list(:comments, 3, post: post)
      end
    end
  end
end
