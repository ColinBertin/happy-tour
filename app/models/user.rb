class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Associations
  has_many :bookings
  has_many :bookings_as_owner, through: :tours, source: :bookings
  has_many :tours, through: :bookings

  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true, numericality: { greater_than: 19 }
end
