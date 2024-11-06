#app/graphql/types/input/user_type.rb

module Types
  module Input
    class UserType < Types::BaseInputObject
      argument :full_name, String, required: true
      argument :phone_number, String, required: true
      argument :email, String, required: true
      argument :gender, Enums::UserGenderEnum, required: false
    end
  end
end 
