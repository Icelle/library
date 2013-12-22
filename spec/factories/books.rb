# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    sequence(:title) {|n| "Book Title: #{n}"}
    author "John Smith"
  end
end
