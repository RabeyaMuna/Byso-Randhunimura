module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :full_name, String, null: false
    field :email, String, null: false
    field :gender, Types::GenderEnum
    field :role, RoleType, null: false

    def role
      object.role
    end
  end
end
