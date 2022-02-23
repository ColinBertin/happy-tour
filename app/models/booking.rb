class Booking < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :tour

  # Validations
  validates :schedule, presence: true
  validates :participant, presence: true
  enum confirmation: {
    pending: 0,
    confirmed: 1,
    declined: 2
  }
end
