module Types
  class RoleInputType < Types::BaseInputObject
    argument :role_name, Types::RoleEnum, required: true
    argument :uuid, String, required: true
  end
end
