# app/graphql/types/event_input_type.rb
module Types
  class EventInputType < Types::BaseInputObject
    argument :title, String, required: true
    argument :event_description, String, required: false
    argument :total_donation_amount_collected, Float, required: false
    argument :start_date_of_event, GraphQL::Types::ISO8601DateTime, required: false
    argument :last_date_of_submission, GraphQL::Types::ISO8601DateTime, required: false
  end
end
