FactoryBot.define do
  factory :equipment do
    name { "MyString" }
    serial_number { "MyString" }
    acquisition_date { "2023-10-14" }
    user_responsible { "MyString" }
    company { nil }
  end
end
