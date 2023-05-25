
module Types
  class RoleType < Types::BaseObject
    field :id, ID, null: false
    field :role_name, Types::RoleEnum, null: false
  end
end
