class User < ApplicationRecord
    belongs_to :role

    has_many :user_pays_for_events, dependent: :destroy, inverse_of: :user
    has_many :events, through: :user_events

    enum gender: {
    male: 0,
    female: 1,
    other: 2
  }

   validates :email, :phone_number, presence: true # this is up to you

   validates_uniqueness_of :phone_number, :email

   validates_plausible_phone :phone_number
end
