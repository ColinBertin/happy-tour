class Booking < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :tour

  PARTICIPANTS = [ 1, 2, 3, 4, 5]

  # Validations

  validates :schedule, presence: true

  # validates :schedule, inclusion: { in: TIMESLOT }

  validates :participant, presence: true
  enum confirmation: {
    pending: 0,
    confirmed: 1,
    declined: 2
  }
end
