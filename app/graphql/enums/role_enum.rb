module Enums
  class RoleEnum < Enums::BaseEnum
    value 'ADMIN', value: 0
    value 'MEMBER', value: 1
    value 'DONOR', value: 2
  end
end
