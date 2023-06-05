
module Types
  class GenderEnum < Types::BaseObject
    value 'male'
    value 'female'
    value 'other'
     User.gender.each_key do |name|
      value name
    end
  end
end
