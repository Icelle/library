# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checkout do
    book
    sequence(:check_out_date) { |n| (Date.new(2013,12,1) + n.days) }
    sequence(:return_date) { |n| (Date.new(2013,12,1) + n.days+15) }
  end
end
