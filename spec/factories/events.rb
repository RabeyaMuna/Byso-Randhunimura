# spec/factories/events.rb
FactoryBot.define do
  factory :event do
    tittle { Faker::Name.name } # Make sure to correct the attribute name from 'tittle' to 'tittle'
    required_donation_amount { 100000 }
    event_description { Faker::Lorem.paragraph }
    start_date_of_event { DateTime.now }
    last_date_of_submission { DateTime.now + 1.month }
    status { 0 }
    
    association :created_by, factory: :user
  end
end
