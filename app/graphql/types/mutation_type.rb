module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :createEvent, mutation: Mutations::CreateEvent
    field :createUser, mutation: Mutations::createUser
end
