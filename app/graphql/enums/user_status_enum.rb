module Enums
  class UserStatusEnum < Enums::BaseEnum
    value "ACTIVE", value: 'active'
    value "INACTIVE", value: 'inactive'
  end
end
