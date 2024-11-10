
module Mutations
  class UpdateUserPaysForEvent < GraphQL::Schema::Mutation
    argument :id, ID, required: true
    argument :user_pays_for_event_params, Types::Input::UserPaysForEventType, required: true

    field :event, Types::UserPaysForEventType, null: true
    field :errors, [String], null: false

    def resolve(id:, user_pays_for_event_params:)
      user_pays_for_event = UserPaysForEvent.find(id)
      
      user_pays_for_event.update!(user_pays_for_event_params)

      return user_pays_for_event
    end
  end
end
