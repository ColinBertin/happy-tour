class Booking < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :tour

  # TIMESLOT = ['13:00', '15:00', '16:00', '17:00']

  # Validations
  validates :schedule, presence: true
  enum confirmation: {
    pending: 0,
    confirmed: 1,
    declined: 2
  }
end
