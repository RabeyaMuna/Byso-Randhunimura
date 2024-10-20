module Enums
  class PaymentMethodEnum <  Enums::BaseEnum
    value 'PAYPAL', value: 0
    value 'STRIPE', value: 1
    value 'BIKAS', value: 2
    value 'GOOGLE_PAY', value: 3
    value 'BANK_TRANSFER', value: 4
    value 'CARD_PAY_VISA_CREDIT', value: 5
  end
end
