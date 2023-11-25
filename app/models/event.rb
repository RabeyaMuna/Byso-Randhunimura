class Event < ApplicationRecord
    has_many :user_pays_for_events, dependent: :destroy, inverse_of: :event
    has_many :users, through: :user_event

    has_one_attached :avatar
    has_one_attached :promo
    has_many_attached :images
    has_many_attached :documents

     enum status:
        {
            open: 0,
            close: 1,
            draft: 2
        }

    validates :tittle, :event_description, :last_date_of_submission, :start_date_of_event, :required_donation_amount, :status, presence: true
end
