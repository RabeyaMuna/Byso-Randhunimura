module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :full_name, String, null: false
    field :email, String, null: false
    field :phone_number, String, null: false
    field :gender, Enums::UserGenderEnum
    field :role, RoleType, null: false
    field :status, Enums::UserStatusEnum

    def role
      object.role
    end
  end
end
