FactoryBot.define do
  factory :maintenance_log do
    title { "MyString" }
    description { "MyText" }
    date { 1 }
    hoursUntilService { 1 }
  end
end
