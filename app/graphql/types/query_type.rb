module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :users, [Types::UserType], null: false
    field :events, [Types::EventType], null: false
    field :user_pays_for_events, [Types::UserPaysForEventType], null: false
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end
    field :event, Types::EventType, null: false do
      argument :id, ID, required: true
    end
    field :user_pays_for_event, Types::UserPaysForEventType, null: false do
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def events
      Event.all
    end

    def user_pays_for_events
      UserPaysForEvent.all
    end

    def user(id:)
      User.find_by(id: id)
    end

    def event(id:)
      Event.find_by(id: id)
    end

    def user_pays_for_event
      UserPaysForEvent.find_by(id: id)
    end

    def events
      Event.all
    end

    def user_pays_for_events
      UserPaysForEvent.all
    end
  end
end
