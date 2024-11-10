FactoryBot.define do
  factory :user_pays_for_event do
    amount { 500 }
    association :event, factory: :event
    association :user, factory: :user
  end
end
