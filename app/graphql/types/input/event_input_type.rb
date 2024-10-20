# app/graphql/types/event_input_type.rb
module Types
  module Input
    class EventInputType < Types::BaseInputObject
      argument :title, String, required: true
      argument :event_description, String, required: false
      argument :location, String, required: false
      argument :required_donation_amount, Float, required: true
      argument :status, Enums::EventStatusEnum, default_value: 'Draft'
      argument :created_by, String, required: false
      argument :total_donation_amount_collected, Float, required: false
      argument :start_date_of_event, GraphQL::Types::ISO8601DateTime, required: true
      argument :last_date_of_submission, GraphQL::Types::ISO8601DateTime, required: true
      argument :user_pays_for_events_attributes, [Input::UserPaysForEventInputType], required: false
    end
  end
end
