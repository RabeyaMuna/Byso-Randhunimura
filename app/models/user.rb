class User < ApplicationRecord
    belongs_to :role

    has_many :user_pays_for_events, dependent: :destroy, inverse_of: :user
    has_many :events, through: :user_pays_for_events

    enum gender: {
    male: 0,
    female: 1,
    other: 2
  }

   validates :full_name, :email, :phone_number, :status, presence: true # this is up to you

   validates_uniqueness_of :phone_number, :email

   validates_plausible_phone :phone_number
end
