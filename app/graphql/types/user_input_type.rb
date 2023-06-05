module Types
  class UserInputType < Types::BaseInputObject
    argument :full_name, String, required: true
    argument :phone_number, String, required: true
    argument :email, String, required: true
    argument :gender, Types::GenderEnum, required: false
  end
end 
