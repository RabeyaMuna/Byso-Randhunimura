# app/graphql/mutations/create_event.rb
module Mutations
  module Events
  class UpdateEvent < GraphQL::Schema::Mutation
    argument :id, ID, required: true
    argument :event_params, Types::Input::EventInputType, required: true

    field :event, Types::EventType, null: true
    field :errors, [String], null: false

    def resolve(id:, event_params:)
      event = Event.find(id)
      
      event.update!(event_params)

      return event
    end
  end
end
end 
