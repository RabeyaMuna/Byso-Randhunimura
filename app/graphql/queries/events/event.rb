module  Queries 
    module Event
      class Event < BaseQuery

        arguments :id, ID, required: true

        type :event, Types::EventType, null: false

        def resolve(id:)
            event = Event.find(id)
        end
      end
  end
end
