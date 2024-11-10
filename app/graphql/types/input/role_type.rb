module Types
  module Input
    class RoleType < Types::BaseInputObject
      argument :role_name, Enums::RoleEnum, required: true
      argument :uuid, String, required: true
    end
  end
end
