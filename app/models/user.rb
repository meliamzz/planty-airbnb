class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :plants

  # Bookings reçus par un proprio sur ses plantes
  has_many :bookings_received, through: :plants, source: :bookings

  # Bookings fait sur les plantes d'autres utilisateurs
  has_many :bookings

  has_many :reviews
  has_many :reviews, through: :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
