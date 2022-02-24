class Tour < ApplicationRecord
  # Associations
  belongs_to :user # Owner user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings # Client user
  has_one_attached :photo

  # Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true, numericality: true
  validates :content, presence: true, length: { minimum: 50 }
end
