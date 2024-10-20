# app/graphql/types/input/user_pays_for_event_input_type.rb
module Types
  module Input
    class UserPaysForEventInputType < Types::BaseInputObject
      argument :amount, Float, required: true
      argument :user_id, ID, required: true
      argument :event_id, ID, required: true
      argument :payment_method, Enums::PaymentMethodEnum, required: true
      argument :donated_amount, Float, required: true
      argument :payment_id, ID, required: true
      argument :paid_on, GraphQL::Types::ISO8601DateTime, required: false
    end
  end
end
