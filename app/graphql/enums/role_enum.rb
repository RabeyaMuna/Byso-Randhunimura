module Enums
  class RoleEnum < Enums::BaseEnum
    value 'ADMIN', value: :admin
    value 'MEMBER', value: :member
    value 'DONOR', value: :donor
  end
end
