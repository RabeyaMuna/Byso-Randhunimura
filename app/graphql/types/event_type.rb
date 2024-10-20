module Types
  class EventType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :total_donation_amount_collected, Float
    field :required_donation_amount, Float, null: false
    field :event_description, String
    field :start_date_of_event, GraphQL::Types::ISO8601DateTime
    field :last_date_of_submission, GraphQL::Types::ISO8601DateTime, null: false
    field :location, String
    field :avatar_url, String
    field :promo_url, String
    field :image_urls, [String]
    field :status, Enums::EventStatusEnum
    field :user_pays_for_events, [UserPaysForEventType], null: true

    def avatar_url
      object.avatar.service_url if object.avatar.attached?
    end

    def promo_url
      object.promo.service_url if object.promo.attached?
    end

    def image_urls
      object.images.map { |image| image.service_url } if object.images.attached?
    end
  end
end
