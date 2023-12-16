FactoryBot.define do
  factory :role do
    role_name { :admin }
    uuid { Faker::Internet.uuid }
  end
end
