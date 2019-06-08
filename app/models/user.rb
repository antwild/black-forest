class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, class_name: "Booking", foreign_key: "admin_id", dependent: :destroy
  has_many :bookings, class_name: "Booking", foreign_key: "renter_id", dependent: :destroy
end
