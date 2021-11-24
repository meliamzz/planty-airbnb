class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :plants

  # Bookings reçus par un proprio sur ses plantes
  has_many :bookings, through: :plants

  # Bookings fait sur les plantes d'autres utilisateurs
  has_many :bookings_requests, class_name: "Booking"

  has_many :reviews
  has_many :reviews, through: :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
