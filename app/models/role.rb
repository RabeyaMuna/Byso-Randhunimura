class Role < ApplicationRecord
  has_many :users, dependent: :destroy, inverse_of: :role

    enum role_name: {
    admin: 0,
    member: 1,
    donar: 2
  }

   validates :role_name, presence: true # this is up to you
end
