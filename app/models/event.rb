class Event < ApplicationRecord
    has_many :user_pays_for_events, dependent: :destroy, inverse_of: :event
    has_many :users, through: :user_event

    has_one_attached :avatar
    has_one_attached :promo
    has_many_attached :images

    validates :tittle, :event_description, :last_date_of_submission, :start_date_of_event, presence: true
end
