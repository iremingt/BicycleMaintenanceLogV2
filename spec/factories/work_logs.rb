FactoryBot.define do
  factory :work_log do
    title { "MyString" }
    description { "MyText" }
    date { 1 }
    hoursUntilServiceDue { 1 }
  end
end
