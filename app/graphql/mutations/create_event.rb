# app/graphql/mutations/create_event.rb
module Mutations
  class CreateEvent < GraphQL::Schema::Mutation
    argument :event_params, Types::EventInputType, required: true

    field :event, Types::EventType, null: true
    field :errors, [String], null: false

    def resolve(event_params:)
      event = Event.new(event_params.to_h)

      if event.save
        { event: event, errors: [] }
      else
        { event: nil, errors: event.errors.full_messages }
      end
    end
  end
end
