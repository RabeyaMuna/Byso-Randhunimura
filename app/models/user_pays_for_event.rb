class UserPaysForEvent < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :payment_method, :donated_amount
end
