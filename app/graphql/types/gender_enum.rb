
module Types
  class GenderEnum < Types::BaseObject
     Role.role_names.each_key do |name|
      value name
    end
  end
end
