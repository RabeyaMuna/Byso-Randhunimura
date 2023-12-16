FactoryBot.define do
  factory :user do
    full_name { Faker::Name.name }
    phone_number { "88017#{Faker::Number.number(digits: 8)}"  }
    email { Faker::Internet.email }
    gender { 0 }
    # Add other attributes as needed
    role
  end
end
