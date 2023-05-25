module Types
  class EventType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :total_donation_amount_collected, Float
    field :event_description, String
    field :start_date_of_event, GraphQL::Types::ISO8601DateTime
    field :last_date_of_submission, GraphQL::Types::ISO8601DateTime

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
