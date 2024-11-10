class UserPaysForEvent < ApplicationRecord
  belongs_to :event
  belongs_to :user


  enum donated_amount:
    {
    paypal: 0,
    stripe: 1,
    bikas: 2,
    google_pay: 3,
    bank_transfer: 4
    }
    
  validates :payment_method, :donated_amount
end
