FactoryBot.define do
  factory :user_pays_for_event do
    amount { 500 }
    event
    user
  end
end
