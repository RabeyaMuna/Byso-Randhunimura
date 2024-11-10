#app/graphql/types/input/user_type.rb

module Types
  module Input
    class UserAttributes < Types::BaseInputObject
      argument :full_name, String, required: true
      argument :phone_number, String, required: true
      argument :email, String, required: true
      argument :role_id, ID, required: true
      argument :gender, Enums::UserGenderEnum, required: false
      argument :status, Enums::UserStatusEnum, required: true
    end
  end
end
