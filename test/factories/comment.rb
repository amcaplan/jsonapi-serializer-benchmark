FactoryGirl.define do
  factory :comment do
    author
    post
    sequence(:title) { |n| "This is comment #{n}" }
    content "There are actually ten steps."
  end
end
