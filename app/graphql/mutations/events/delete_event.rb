module Mutations
    module Events
        class DeleteEvent < BaseMutation
            argument :id, ID, required: true

            field :user, Types::EventType, null: true
            field :errors, [String], null: false

            def resolve(id: nil)
                event = Event.find(id)

                event.destroy!
            end
        end
    end
end
