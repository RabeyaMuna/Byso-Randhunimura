module Types
  class EventType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :total_donation_amount_collected, Float
    field :event_description, String
    field :start_date_of_event, GraphQL::Types::ISO8601DateTime
    field :last_date_of_submission, GraphQL::Types::ISO8601DateTime
    field :avatar_url, String, null: true
    field :promo_url, String, null: true
    field :image_urls, [String], null: true

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
