FactoryBot.define do
  factory :event do
    tittle { Faker::Name.name }
    event_description { Faker::Lorem.paragraph  }
    start_date_of_event { DateTime.now }
    last_date_of_submission { DateTime.now + 1.month }
  end
end
