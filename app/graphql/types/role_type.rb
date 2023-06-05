
module Types
  class RoleType < Types::BaseObject
    field :id, ID, null: false
    field :role_name, Types::RoleEnum, null: false
    field :users, [UserType], null: false

    def users
      object.users
    end
  end
end
