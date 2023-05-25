module Types
  class UserInputType < Types::BaseInputObject
    argument :full_name, String, required: true
    argument :phone_number, String, required: false
    argument :email, Float, required: false
    argument :gender, Types::GenderEnum, null: false
  end
end 
