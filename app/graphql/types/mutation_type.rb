module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :createEvent, mutation: Mutations::Events::CreateEvent
    field :createUser, mutation: Mutations::Users::CreateUser
    field :createRole, mutation: Mutations::Users::CreateRole
  end
end
