module Queries
    module Events
        class EventList < BaseQuery
        
        type :events, Types::EventType, null: false
            
        def resolve(params: {})

          events = Event.all
        end
        end
    end
end
