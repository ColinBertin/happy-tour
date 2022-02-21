class Tour < ApplicationRecord
  # Associations
  belongs_to :user # Owner user
  has_many :bookings
  has_many :users, through: :bookings # Client user

  # Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true, numericality: true
  validates :content, presence: true, length: { minimun: 50 }
end
