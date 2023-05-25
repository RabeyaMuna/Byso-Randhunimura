module Types
  class RoleEnum < Types::BaseEnum
    Role.role_names.each_key do |name|
      value name
    end
  end
end
