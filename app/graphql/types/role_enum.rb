module Types
  class RoleEnum < Types::BaseEnum

    value 'admin'
    value 'member'
    value 'donar'

    Role.role_name.each_key do |name|
      value name
    end
  end
end
