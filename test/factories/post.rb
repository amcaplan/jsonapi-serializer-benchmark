FactoryGirl.define do
  factory :post do
    author
    sequence(:title) { |n| "How to read a book effectively #{n}" }
    content "There are five steps involved."

    trait :with_comments do
      after(:create) do |post, _|
        FactoryGirl.create_list(:comment, 10, post: post)
      end
    end
  end
end
