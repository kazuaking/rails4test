# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :hellow do
    name "MyString"
    start_at "2013-04-11 11:03:01"
    end_at "2013-04-11 11:03:01"
    memo "MyText"
    category ""
  end
end
